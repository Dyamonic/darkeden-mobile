"""Read-only extraction of allowlisted gameplay tables from a local PC server dump.

Never connects to a database or reads/exports account tables. This is reference
data, not an automatic import into the mobile game's balance or save files.
"""
from pathlib import Path
import argparse,csv,gzip,hashlib,json,re,sqlite3,struct

def smp_header(path):
    raw=path.read_bytes();pos=0
    def take(fmt):
        nonlocal pos
        value=struct.unpack_from('<'+fmt,raw,pos)[0];pos+=struct.calcsize('<'+fmt);return value
    n=take('I');pos+=n
    zone=take('H');take('H')
    n=take('I');pos+=n;take('B');take('B')
    n=take('I');pos+=n
    width,height=take('H'),take('H')
    assert 0<width<=1024 and 0<height<=1024,(path,width,height)
    flags=raw[pos:pos+width*height];assert len(flags)==width*height
    return {'header_zone_id':zone,'width':width,'height':height,'zero_flag_tiles':flags.count(0),
        'sha256':hashlib.sha256(raw).hexdigest()}

def treasure(path):
    raw=path.read_bytes();pos=0
    def number():
        nonlocal pos
        value=struct.unpack_from('<i',raw,pos)[0];pos+=4;return value
    def count():
        n=number();assert 0<=n<=100000,(path,n,pos);return n
    groups=[]
    for _ in range(count()):
        group={'item_ratio':number(),'option_ratio':number(),'classes':[]}
        for _ in range(count()):
            cls={'item_class':number(),'weight':number(),'types':[]}
            for _ in range(count()):
                item={'item_type':number(),'weight':number(),'options':[]}
                for _ in range(count()):item['options'].append({'option_type':number(),'weight':number()})
                cls['types'].append(item)
            group['classes'].append(cls)
        groups.append(group)
    assert pos==len(raw),(path,pos,len(raw))
    return {'sha256':hashlib.sha256(raw).hexdigest(),'groups':groups}

def rows(text):
    # mysqldump VALUES tuples, including quoted commas, parentheses and escapes.
    i=0
    while i<len(text):
        while i<len(text) and text[i] in ' ,;\r\n':i+=1
        if i==len(text):return
        assert text[i]=='(',text[i:i+30]
        i+=1;row=[]
        while True:
            while text[i].isspace():i+=1
            if text[i]=="'":
                i+=1;value=[]
                while True:
                    c=text[i];i+=1
                    if c=='\\':
                        c=text[i];i+=1
                        value.append({'n':'\n','r':'\r','t':'\t','0':'\0','Z':'\x1a'}.get(c,c))
                    elif c=="'":
                        if text[i:i+1]=="'":value.append("'");i+=1
                        else:break
                    else:value.append(c)
                row.append(''.join(value))
            else:
                end=i
                while text[end] not in ',)':end+=1
                value=text[i:end].strip();i=end
                row.append(None if value=='NULL' else float(value) if '.' in value else int(value))
            while text[i].isspace():i+=1
            if text[i]==')':i+=1;break
            assert text[i]==',';i+=1
        yield row

def tables(sql,names):
    result={}
    for name in names:
        match=re.search(r'CREATE TABLE `'+re.escape(name)+r'` \((.*?)\n\)',sql,re.S)
        if not match:continue
        columns=re.findall(r'^\s*`([^`]+)`',match[1],re.M)
        records=[]
        for insert in re.finditer(r'^INSERT INTO `'+re.escape(name)+r'` VALUES (.*);$',sql,re.M):
            for values in rows(insert[1]):
                assert len(values)==len(columns),(name,len(values),len(columns))
                records.append(dict(zip(columns,values)))
        result[name]=records
    return result

def main():
    p=argparse.ArgumentParser();p.add_argument('server',type=Path);args=p.parse_args()
    root=Path(__file__).resolve().parents[1]
    dump=args.server/'initdb/DARKEDEN.sql'
    raw=dump.read_bytes();sql=raw.decode('utf-8')
    table_names=re.findall(r'CREATE TABLE `([^`]+)`',sql)
    related=[t for t in table_names if re.search('exp|balance|variable',t,re.I)]
    data=tables(sql,['MonsterInfo','ZoneInfo']+related)
    out=root/'reverse-engineering/data-audit/pc-server';out.mkdir(parents=True,exist_ok=True)
    for name,records in data.items():
        if not records:continue
        with (out/(name+'.csv')).open('w',newline='',encoding='utf-8') as f:
            writer=csv.DictWriter(f,fieldnames=list(records[0]));writer.writeheader();writer.writerows(records)
    loot={p.name:treasure(p) for p in sorted((args.server/'data').glob('*.bin')) if p.name.endswith(('.slayer.bin','.vampire.bin','.ousters.bin'))}
    (out/'treasure-tables.json.gz').write_bytes(gzip.compress(json.dumps(loot,ensure_ascii=False,separators=(',',':')).encode('utf-8'),mtime=0))
    populations=[]
    for zone in data['ZoneInfo']:
        for column in ['MonsterList','EventMonsterList']:
            for a,b,delay in re.findall(r'\(\s*(\d+)\s*,\s*(\d+)\s*(?:,\s*(\d+)\s*)?\)',zone[column] or ''):
                populations.append({'zone_id':zone['ZoneID'],'smp_file':zone['SmpFileName'],'source':column,
                    'pc_mtype':int(a),'count':int(b),'event_delay':delay})
    with (out/'zone-populations.csv').open('w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=list(populations[0]));w.writeheader();w.writerows(populations)
    db=sqlite3.connect(root/'editable-apk/assets/win32/res/data/data.bin');db.row_factory=sqlite3.Row
    maps={int(r['MapCode']):dict(r) for r in db.execute('SELECT MapCode,MapName,MapName_en,ResCode,Width,Height FROM Map')}
    map_checks=[]
    for zone in data['ZoneInfo']:
        path=args.server/'data'/zone['SmpFileName']
        if not path.is_file():continue
        info=smp_header(path)
        mob=maps.get(zone['ZoneID'])
        map_checks.append({'pc_zone_id':zone['ZoneID'],'smp_file':path.name,**info,
            'mobile_same_id_name':mob['MapName'] if mob else '',
            'mobile_width':mob['Width'] if mob else '', 'mobile_height':mob['Height'] if mob else '',
            'same_id_and_dimensions':bool(mob and info['width']==mob['Width'] and info['height']==mob['Height']),
            'warning':'ID/dimension candidate only; walkability, portals and coordinates not validated'})
    with (out/'map-id-candidates.csv').open('w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=list(map_checks[0]));w.writeheader();w.writerows(map_checks)
    mobile=list(db.execute('SELECT ID,Name,ENName,Level,ModelId FROM MonsterInfo'))
    pc=data['MonsterInfo'];byname={}
    loot_refs=[]
    for row in pc:
        if not row['HasTreasure']:continue
        base='Class'+str(row['MonsterClass']) if row['MonsterClass'] else row['EName']
        for race in ['slayer','vampire','ousters']:
            filename=base+'.'+race+'.bin'
            loot_refs.append({'pc_mtype':row['MType'],'pc_name':row['EName'],'race':race,
                'treasure_file':filename,'file_decoded':filename in loot})
    with (out/'monster-loot-references.csv').open('w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=list(loot_refs[0]));w.writeheader();w.writerows(loot_refs)
    for row in pc:byname.setdefault(row['EName'].strip().casefold(),[]).append(row)
    matches=[]
    for row in mobile:
        for match in byname.get((row['ENName'] or '').strip().casefold(),[]):
            matches.append({'mobile_id':row['ID'],'mobile_name':row['ENName'],'mobile_level':row['Level'],
                'mobile_model':row['ModelId'],'pc_mtype':match['MType'],'pc_stype':match['SType'],
                'pc_level':match['Level'],'pc_name':match['EName'],
                'warning':'Name candidate only; IDs, models, balance and maps require validation'})
    with (out/'monster-name-candidates.csv').open('w',newline='',encoding='utf-8') as f:
        w=csv.DictWriter(f,fieldnames=list(matches[0]));w.writeheader();w.writerows(matches)
    wanted=['Dead Body','Turning Dead','Turning Soul']
    summary={'source_dump_sha256':hashlib.sha256(raw).hexdigest(),'source_kind':'PC server reference; not mobile-authoritative',
        'table_counts':{k:len(v) for k,v in data.items()},'monster_columns':list(pc[0]),'zone_columns':list(data['ZoneInfo'][0]),
        'mobile_monsters':len(mobile),'name_candidate_pairs':len(matches),'distinct_mobile_name_candidates':len({r['mobile_id'] for r in matches}),
        'treasure_bin_files':len(loot),'population_entries':len(populations),'related_tables':related,
        'smp_files_read':len(map_checks),'map_same_id_and_dimension_candidates':sum(r['same_id_and_dimensions'] for r in map_checks),
        'monster_loot_references':len(loot_refs),'missing_referenced_treasure_files':sorted({r['treasure_file'] for r in loot_refs if not r['file_decoded']}),
        'population_unresolved_mtypes':sorted({r['pc_mtype'] for r in populations}-{r['MType'] for r in pc}),
        'examples':[r for r in pc if r['EName'] in wanted],
        'zone_examples':[r for r in data['ZoneInfo'] if r['ZoneID'] in [12,13,23,61,1003,1311]]}
    files=['src/server/gameserver/'+f for f in ['MonsterInfo.cpp','Monster.cpp','MonsterManager.cpp','Zone.cpp','Treasure.cpp','AbilityBalance.cpp','AbilityBalance.h','CreatureUtil.cpp','Slayer.cpp','skill/SkillUtil.cpp','skill/AttackMelee.cpp','skill/AttackArms.cpp']]
    summary['source_files_sha256']={f:hashlib.sha256((args.server/f).read_bytes()).hexdigest() for f in files}
    (out/'summary.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:summary[k] for k in ['table_counts','mobile_monsters','name_candidate_pairs','distinct_mobile_name_candidates','treasure_bin_files']}))
    print('Reference CSVs and summary:',out)

if __name__=='__main__':main()
