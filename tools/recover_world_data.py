"""Export original spawn evidence and build offline race/map configuration."""
from pathlib import Path
import csv,json,re,sqlite3
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'reverse-engineering/data-audit';OUT.mkdir(exist_ok=True)

def parse(value, default=None):
    try:return json.loads(re.sub(r',\s*([\]}])',r'\1',value))
    except (ValueError,TypeError):return default

def lua(value):
    if isinstance(value,dict):return '{'+','.join('['+lua(k)+']='+lua(v) for k,v in value.items())+'}'
    if isinstance(value,list):return '{'+','.join(map(lua,value))+'}'
    if isinstance(value,bool):return 'true' if value else 'false'
    if value is None:return 'nil'
    return json.dumps(value,ensure_ascii=True)

def main():
    src=sqlite3.connect(ROOT/'game-translation/originals/win32/res/data/data.bin');src.row_factory=sqlite3.Row
    en=sqlite3.connect(ROOT/'editable-apk/assets/win32/res/data/data.bin');en.row_factory=sqlite3.Row
    monsters={r['ID']:dict(r) for r in en.execute('SELECT * FROM MonsterInfo')}
    maps={r['MapCode']:{'width':r['Width'],'height':r['Height'],'safe':bool(r['WholeMapSafe']),
        'name':r['MapName'],'portals':[],'hints':[]} for r in en.execute('SELECT * FROM Map')}
    homes={}
    for race,name in [(1,'Slayer'),(2,'Vampire'),(3,'Ousters')]:
        value=src.execute('SELECT Value FROM Variable WHERE Name=?',(name+'BornMapCode',)).fetchone()[0]
        code,m,n=value.split(',');homes[race]={'map':code,'m':int(m),'n':int(n)}
    evidence=[]
    def export(name,rows):
        with (OUT/name).open('w',encoding='utf-8-sig',newline='') as f:
            writer=csv.DictWriter(f,fieldnames=list(rows[0]));writer.writeheader();writer.writerows(rows)
    export('english-zone-names.csv',[{'map':r['MapCode'],'english':r['MapName'],'source_english':r['MapName_en']} for r in en.execute('SELECT * FROM Map')])
    export('english-npc-locations.csv',[{'npc':r['NpcIndex'],'english':r['NpcName'],'map':r['MapResId'],
        'zone':maps.get(str(r['MapResId']),{}).get('name',''),'tile_x':r['Xpot'],'tile_y':r['Ypot'],
        'race_display':r['Display']} for r in en.execute('SELECT * FROM NpcList')])
    export('english-item-names.csv',[{'table':table,'item':r['ItemIdx'],'english':r['Name'],'source_english':r['ENName']}
        for table in ['Item','Equip'] for r in en.execute('SELECT * FROM '+table)])
    bosses=[]
    for r in src.execute('SELECT * FROM WorldBoss'):
        point=parse(r['MonsterRefreshesCoordinates'],[])
        if len(point)==3:
            bosses.append({'boss_entry':r['Id'],'monster':r['MonsterID'],
                'english':monsters.get(r['MonsterID'],{}).get('Name',''), 'map':point[0],
                'zone':maps.get(str(point[0]),{}).get('name',''), 'tile_x':point[1],'tile_y':point[2],
                'refresh_seconds':r['MonsterRefreshTime'],'source':'WorldBoss.MonsterRefreshesCoordinates'})
    export('boss-spawn-locations.csv',bosses)
    for r in src.execute('SELECT * FROM Mission WHERE ObjectType=1 AND ArrowCueType=2'):
        target=parse(r['MissionTarget'],[]);point=parse(r['TransferPoint'],[])
        if len(point)!=3 or str(point[0]) not in maps:continue
        ids=sorted({int(i) for group in target for i in group[1:] if i in monsters})
        for mid in ids:
            evidence.append({'mission':r['MissionId'],'race':r['Race'],'map':str(point[0]),
                'map_name':maps[str(point[0])]['name'],'tile_x':point[1],'tile_y':point[2],
                'monster_id':mid,'monster_name':monsters[mid]['Name'],
                'evidence':'quest hunt destination; not an exact server spawn'})
        if ids:
            mid=min(ids,key=lambda i:(monsters[i]['Level'],i));mob=monsters[mid]
            hint={'mission':r['MissionId'],'m':point[1],'n':point[2], 'monster':mid,
                'name':mob['Name'],'model':mob['ModelId'],'level':mob['Level']}
            if not any(h['m']==hint['m'] and h['n']==hint['n'] for h in maps[str(point[0])]['hints']):
                maps[str(point[0])]['hints'].append(hint)
    for r in src.execute('SELECT * FROM MapTransfer'):
        area=parse(r['TransferArea'],[]);point=parse(r['TargetPoint'],[])
        if r['MapCode'] in maps and r['TargetMapCode'] in maps and area and len(point)==2:
            maps[r['MapCode']]['portals'].append({'target':r['TargetMapCode'],'area':area,
                'm':point[0],'n':point[1],'kind':r['TargetType']})
    # A bounded local population uses these hunt destinations as centers. Counts,
    # offsets, HP, damage and rewards remain offline adaptation choices.
    for spec in maps.values():spec['hints']=spec['hints'][:3]
    with (OUT/'quest-monster-locations.csv').open('w',encoding='utf-8-sig',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(evidence[0]));w.writeheader();w.writerows(evidence)
    for table in ['Variable','Map','MapTransfer','SafeArea','NpcList','WorldBoss','NpcVampireLair','GateOfAltar','AltarOfBlood','MirrorOfAbyss']:
        rows=[dict(r) for r in src.execute('SELECT * FROM "'+table+'"')]
        with (OUT/(table+'.csv')).open('w',encoding='utf-8-sig',newline='') as f:
            w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    (OUT/'race-starts.json').write_text(json.dumps(homes,indent=2),encoding='utf8')
    (ROOT/'reverse-engineering/offline/WorldData.lua').write_text(
        '-- Generated by tools/recover_world_data.py from the bundled database.\n'
        '-- Hint centers are quest destinations, not recovered server spawn points.\n'
        'return '+lua({'homes':homes,'maps':maps})+'\n',encoding='utf8')
    print('Recovered',len(evidence),'quest/monster location links;',len(maps),'maps; race starts',homes)
if __name__=='__main__':main()
