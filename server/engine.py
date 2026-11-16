"""Private PvE authority using mobile assets and explicitly mapped V2 reference data."""
from pathlib import Path
import collections,csv,gzip,hashlib,heapq,json,math,random,re,secrets,sqlite3,struct,time
from quests import Quests
from skills import Skills
from resurrection import Resurrection

ROOT=Path(__file__).resolve().parents[1]
def parse(value,default=None):
    try:return json.loads(re.sub(r',\s*([\]}])',r'\1',value))
    except (ValueError,TypeError):return default
def integer(value,low=0,high=10**9):
    if isinstance(value,bool) or not isinstance(value,(int,float)) or not math.isfinite(value) or value!=int(value) or not low<=value<=high:
        raise ValueError('Invalid integer')
    return int(value)
def num(value,default=0):
    try:return float(value or default)
    except (ValueError,TypeError):return default
def tile(x,y):return int(x//48),int(-y//24)
def pixel(m,n):return m*48+24,-(n*24+12)
def distance(a,b):
    am,an=tile(a['x'],a['y']);bm,bn=tile(b['x'],b['y'])
    return max(abs(am-bm),abs(an-bn))

class Catalog:
    def __init__(self,root=ROOT):
        self.root=root
        db=sqlite3.connect(root/'editable-apk/assets/win32/res/data/data.bin');db.row_factory=sqlite3.Row
        self.maps={str(r['MapCode']):dict(r) for r in db.execute('SELECT * FROM Map')}
        self.monsters={r['ID']:dict(r) for r in db.execute('SELECT * FROM MonsterInfo')}
        self.items={(kind,r['ItemIdx']):dict(r) for table,kind in [('Item',1),('Equip',2)] for r in db.execute('SELECT * FROM '+table)}
        self.levels={r['Level']:dict(r) for r in db.execute('SELECT * FROM LevelExpInfo')}
        self.domain_exp={(r['DomainType'],r['Level']):r['Exp'] for r in db.execute('SELECT * FROM SlayerLevelExpInfo')}
        self.attr_exp={r['Level']:r['Exp'] for r in db.execute('SELECT * FROM AttributeExpInfo')}
        self.npcs={r['NpcIndex']:dict(r) for r in db.execute('SELECT * FROM NpcList')}
        talks=[dict(r) for r in db.execute('SELECT * FROM NPCTalk')]
        self.talk_key='TalkId'
        self.talks={r[self.talk_key]:r for r in talks}
        self.transfers=[dict(r) for r in db.execute('SELECT * FROM MapTransfer')]
        self.missions={r['MissionId']:dict(r) for r in db.execute('SELECT * FROM Mission')}
        self.skills={r['SkillId']:dict(r) for r in db.execute('SELECT * FROM Skill')}
        self.skill_formulas=json.loads((root/'server/data/skill-formulas.json').read_text())['skills']
        self.goods={r['ItemId']:dict(r) for r in db.execute('SELECT * FROM NormalGoods')}
        self.shops={r['NpcIndex']:dict(r) for r in db.execute('SELECT * FROM ShopType')}
        self.variables={r['Name']:r['Value'] for r in db.execute('SELECT * FROM Variable') if r['Name']}
        def csvdata(name):
            with (root/'reverse-engineering/data-audit/pc-server'/name).open(encoding='utf-8',newline='') as f:return list(csv.DictReader(f))
        self.pc={int(r['MType']):r for r in csvdata('MonsterInfo.csv')}
        self.zones={str(r['ZoneID']):r for r in csvdata('ZoneInfo.csv')}
        self.pop=collections.defaultdict(list)
        for row in csvdata('zone-populations.csv'):self.pop[row['zone_id']].append(row)
        self.loot=json.loads(gzip.decompress((root/'reverse-engineering/data-audit/pc-server/treasure-tables.json.gz').read_bytes()))
        self.item_mappings={(r['pc_class'],int(r['pc_type'])):(r['mobile_kind'],r['mobile_id']) for r in json.loads((root/'server/data/item-mappings.json').read_text(encoding='utf-8'))}
        self.classes=json.loads((root/'server/data/item-classes.json').read_text())
        self.equipment=json.loads((root/'server/data/equipment-slots.json').read_text())
        byname=collections.defaultdict(list)
        for mob in self.monsters.values():byname[(mob['ENName'] or '').strip().casefold()].append(mob)
        self.mob_mappings={}
        for mid,pc in self.pc.items():
            matches=byname.get(pc['EName'].strip().casefold(),[])
            if matches:
                self.mob_mappings[mid]=min(matches,key=lambda r:(r['ID']!=mid,abs(r['Level']-int(pc['Level'])),r['ID']))['ID']
        self.grids={};self.mips={}
        for code,meta in self.maps.items():
            path=root/'editable-apk/assets/win32/res/map/data'/f"{meta['ResCode']}.bin"
            if not path.is_file():continue
            raw=path.read_bytes();width,height=struct.unpack_from('<HH',raw)
            assert len(raw)==4+width*height,(path,len(raw),width,height)
            self.grids[code]=(width,height,raw[4:])
            mip=root/'editable-apk/assets/win32/res/map/mip'/meta['RectJson']
            self.mips[code]=parse(mip.read_text(encoding='utf-8'),{}) if mip.is_file() else {}
        db.close()

    def open(self,code,m,n):
        grid=self.grids.get(str(code))
        # Mobile .bin tiles are column-major; the PC .smp loader is row-major.
        return bool(grid and 0<=m<grid[0] and 0<=n<grid[1] and not grid[2][m*grid[1]+n]&2)
    def safe(self,code,race,m,n):
        if self.maps[str(code)]['WholeMapSafe']:return True
        result=False
        for r in self.mips.get(str(code),{}).get('SafeRects',[]):
            if r['Left']<=m<=r['Right'] and r['Top']<=n<=r['Bottom']:
                result=r['Flag'] in [4,{1:1,2:2,3:16}[race]]
        return result
    def portal(self,code,m,n):
        return any(r['Left']<=m<=r['Right'] and r['Top']<=n<=r['Bottom'] for r in self.mips.get(str(code),{}).get('MPortals',[]))
    def spawn_open(self,code,race,m,n):return self.open(code,m,n) and not self.safe(code,race,m,n) and not self.portal(code,m,n)
    def goal(self,state):return int(self.levels.get(min(state['level'],150),{'Exp':10**9})['Exp'])

    def stats(self,s):
        a=s['appearance'];r=int(a['byRace']);level=s['level'];extra=s.get('allocated',[0,0,0])
        growth=s.get('growth',[0,0,0])
        STR,DEX,INT=[int(a.get(key,20))+int(extra[i])+int(growth[i]) for i,key in enumerate(['wSTR','wDEX','wINT'])]
        equipped=[self.items[(i['kind'],i['item'])] for i in s.get('inventory',[]) if i.get('slot') is not None and (i['kind'],i['item']) in self.items]
        for item in equipped:
            STR+=int(num(item.get('STR')));DEX+=int(num(item.get('DEX')));INT+=int(num(item.get('INT')))
        domain=s.get('domain','Blade');gun=domain=='Gun';mage=domain in ['Heal','Bless']
        if r==1:
            domain_level=s.get('domainLevels',{}).get(domain,level)
            hp=STR*(2 if gun or mage else 3)+domain_level*(2 if gun else 4 if mage else 5)
            hp=int(hp*num(self.variables.get('SlayerHpRatio'),175)/100)
            mp=INT*2;hit=int(DEX/2+domain_level*1.5);defense=int(DEX/2);protection=STR
            lo,hi=(1,2) if gun else (int(STR/15),int(STR/10))
        elif r==2:
            hp=int((STR*4+DEX+INT+level)*num(self.variables.get('VampireHpRatio'),200)/100)
            mp=0;hit=int(DEX+level/2.5);defense=int(DEX/2+level/5);protection=int(STR+level/5)
            lo,hi=int(STR/6+level/5),int(STR/4+level/5)
        else:
            hp=int((STR*3+INT/2+DEX+level)*num(self.variables.get('OustersHpRatio'),100)/100)
            mp=int((INT+level)*.7);hit=int(DEX/2+level);defense=int(DEX/2+level/5);protection=int(STR+level/10)
            lo,hi=int(STR/10+level/10),int(STR/6+level/6)
        for item in equipped:
            lo+=int(num(item.get('MinDamage')));hi+=int(num(item.get('MaxDamage')))
            hit+=int(num(item.get('Hit')));defense+=int(num(item.get('Defence')));protection+=int(num(item.get('Protection')))
        return {'str':STR,'dex':DEX,'int':INT,'maxHP':max(1,min(60000,hp)),'maxMP':max(0,min(30000,mp)),
            'hit':max(1,hit),'defense':max(0,defense),'protection':max(0,protection),'minDamage':max(1,lo),'maxDamage':max(2,hi)}

    def mob(self,pcid):
        row=self.pc[pcid];mobile=self.monsters[self.mob_mappings[pcid]]
        level=int(mobile['Level']);STR=int(row['STR']);DEX=int(row['DEX'])
        enhance={k:int(v) for k,v in re.findall(r'\((\w+),(-?\d+)\)',row['Enhance'])}
        def boost(value,key,cap):
            value=int(value);return max(1,min(cap,value+int(value*enhance.get(key,0)/100)))
        hp=boost(STR*(2+level/100),'HP',60000)
        if pcid<717:hp=min(20000,hp)
        if pcid in [358,359,360,361]:hp*=10
        hp={717:40000,723:60000,724:30000,725:30000,764:55000,765:60000}.get(pcid,hp)
        return {'pc':pcid,'monster':mobile['ID'],'name':mobile['Name'],'model':mobile['ModelId'],'level':level,
            'hp':hp,'maxHP':hp,'hit':boost(DEX/2*(1+level/100),'TOHIT',1000),'defense':boost(DEX/2*(1+level/100),'DEFENSE',1000),
            'protection':boost(STR/(5-level/100),'PROTECTION',1000),
            'minDamage':boost(STR/max(.1,6-level/100),'MINDAMAGE',1000),'maxDamage':boost(STR/max(.1,4-level/100),'MAXDAMAGE',1000),
            'attackInterval':max(.2,int(row['ADelay'])/1000),'moveInterval':max(.2,int(row['Delay'])/1000),
            'xp':max(1,int((STR+DEX+int(row['INTE']))*(.75+level/200))),'direction':0,'action':0}

class Engine:
    def __init__(self,database,catalog=None,clock=time.monotonic):
        self.data=catalog or Catalog();self.clock=clock;self.rng=random.Random()
        self.db=sqlite3.connect(database,check_same_thread=False)
        self.db.execute('PRAGMA journal_mode=WAL')
        self.db.executescript('CREATE TABLE IF NOT EXISTS characters(name TEXT PRIMARY KEY,state TEXT NOT NULL,gm INTEGER NOT NULL DEFAULT 0); CREATE TABLE IF NOT EXISTS metadata(key TEXT PRIMARY KEY,value TEXT NOT NULL);')
        self.sessions={};self.events=collections.defaultdict(list)
        self.quests=Quests(self)
        self.skills=Skills(self)
        self.resurrection=Resurrection(self)
        self.mapping_skips=collections.Counter()
    def persist(self,s):
        payload={k:v for k,v in s.items() if k not in ['stats','serverTime']}
        self.db.execute('UPDATE characters SET state=? WHERE name=?',(json.dumps(payload),s['name'].casefold()));self.db.commit()
    def item_id(self,s):
        value=max(s.get('nextItemID',1000000),max((i['objID']+1 for i in s.get('inventory',[])),default=1000000))
        s['nextItemID']=value+1;return value
    def pack_bag(self,s):
        used={(0,0)} if s['potions'] else set()
        for item in s.get('inventory',[]):
            if item.get('slot') is not None:continue
            size=int(num(self.data.items[(item['kind'],item['item'])].get('ItemSize'),1))
            width,height={0:(1,1),1:(1,1),2:(1,2),3:(1,3),4:(2,2),6:(2,3)}.get(size,(1,1))
            spot=next(((x,y) for y in range(9-height) for x in range(9-width) if all((x+dx,y+dy) not in used for dx in range(width) for dy in range(height))),None)
            if not spot:raise ValueError('Your bag does not have enough space')
            item['bagX'],item['bagY']=spot
            used.update((spot[0]+dx,spot[1]+dy) for dx in range(width) for dy in range(height))
    def add_item(self,s,kind,item,count=1):
        if (kind,item) not in self.data.items:raise ValueError('Unknown mobile item')
        count=integer(count,1,9999);previous=json.loads(json.dumps(s['inventory']))
        if kind==1:
            limit=max(1,int(num(self.data.items[(kind,item)].get('AddLimit'),1)))
            for stack in s['inventory']:
                if stack['kind']==kind and stack['item']==item and stack.get('slot') is None:
                    amount=min(count,max(0,limit-stack['count']));stack['count']+=amount;count-=amount
            while count:
                amount=min(count,limit);count-=amount
                s['inventory'].append({'objID':self.item_id(s),'kind':kind,'item':item,'count':amount})
        else:
            for _ in range(count):s['inventory'].append({'objID':self.item_id(s),'kind':kind,'item':item,'count':1})
        try:self.pack_bag(s)
        except ValueError:s['inventory']=previous;raise
        s['inventoryRevision']+=1
    def import_roster(self,roster):
        if self.db.execute("SELECT 1 FROM metadata WHERE key='imported'").fetchone():raise ValueError('Roster was already imported')
        states=[self.migrate(json.loads(json.dumps(s))) for s in roster['characters']]
        with self.db:
            for s in states:self.db.execute('INSERT INTO characters(name,state) VALUES(?,?)',(s['name'].casefold(),json.dumps(s)))
            self.db.execute("INSERT INTO metadata VALUES('imported','1')")
    def migrate(self,s):
        s.setdefault('appearance',{'byRace':1,'bySex':0,'wSTR':20,'wDEX':20,'wINT':20})
        if s.get('serverVersion')!=1:
            oldmax=100+s['level']*20;oldhp=s['hp']
            s['allocated']=[0,0,0];s['points']=3*(s['level']-1) if s['appearance']['byRace']!=1 else 0
            s['skillPoints']=max(0,s['level']-1);s['domain']='Blade';s['attrXP']=[0,0,0];s['inventory']=[];s['serverVersion']=1
            s['inventoryRevision']=0
            s['hp']=0 if oldhp==0 else max(1,int(self.data.stats(s)['maxHP']*min(1,oldhp/oldmax)))
            s['mp']=self.data.stats(s)['maxMP']
        s['stats']=self.data.stats(s);s['hp']=min(s['hp'],s['stats']['maxHP'])
        s.setdefault('growth',[0,0,0])
        if s['appearance']['byRace']==1:
            s.setdefault('domainLevels',{'Blade':s['level'],'Sword':1,'Gun':1,'Heal':1,'Bless':1})
            s.setdefault('domainXP',{'Blade':s['xp'],'Sword':0,'Gun':0,'Heal':0,'Bless':0})
        self.pack_bag(s);self.quests.init(s);self.skills.init(s)
        s.setdefault('resurrection',self.resurrection.default(s))
        return s
    def roster(self):return [self.migrate(json.loads(r[0])) for r in self.db.execute('SELECT state FROM characters ORDER BY rowid')]
    def create(self,name,appearance):
        if not isinstance(name,str) or not 1<=len(name)<=24 or not re.fullmatch(r'[\w -]+',name):raise ValueError('Use a character name of 1–24 letters, numbers or spaces')
        if self.db.execute('SELECT 1 FROM characters WHERE name=?',(name.casefold(),)).fetchone():raise ValueError('A character with this name already exists')
        if self.db.execute('SELECT COUNT(*) FROM characters').fetchone()[0]>=3:raise ValueError('All three character slots are full')
        race=integer(appearance.get('byRace'),1,3)
        a={k:integer(appearance.get(k,0),0,1000) for k in ['byRace','bySex','byFaceShape','byHairColor','bySkinColor','wSTR','wDEX','wINT']}
        total=sum(a[k] for k in ['wSTR','wDEX','wINT'])
        if race==2 and any(a[k]!=20 for k in ['wSTR','wDEX','wINT']):raise ValueError('Invalid Vampire starting stats')
        if race==1 and (total!=30 or min(a[k] for k in ['wSTR','wDEX','wINT'])<5):raise ValueError('Invalid Slayer starting stats')
        if race==3 and (total!=45 or min(a[k] for k in ['wSTR','wDEX','wINT'])<10):raise ValueError('Assign all 15 Ousters starting points')
        code,m,n={1:('12',117,146),2:('1003',62,64),3:('1311',24,73)}[race]
        x,y=pixel(m,n)
        s={'version':1,'name':name,'appearance':a,'map':code,'x':x,'y':y,'level':1,'xp':0,'hp':120,'gold':0,'potions':3,'kills':0,'elapsed':0,'spawnRevision':1,'created':time.strftime('%Y-%m-%d %H:%M:%S')}
        self.migrate(s);s['hp']=s['stats']['maxHP']
        self.db.execute('INSERT INTO characters(name,state) VALUES(?,?)',(name.casefold(),json.dumps(s)));self.db.commit();return s
    def enter(self,name):
        key=name.casefold()
        if key in self.sessions:return self.snapshot(self.sessions[key],0)
        row=self.db.execute('SELECT state,gm FROM characters WHERE name=?',(key,)).fetchone()
        if not row:raise ValueError('Character does not exist on this server')
        state=self.migrate(json.loads(row[0]));state['gm']=bool(row[1]);now=self.clock()
        session={'state':state,'mobs':[],'drops':[],'seq':0,'event':0,'events':[],'last':now,'saveAt':now,'seen':now,'attackAt':0,'lastMove':now,'paused':False,'generation':secrets.token_hex(8),'id':0}
        self.sessions[key]=session;self.populate(session);self.persist(state)
        return self.snapshot(session,0)
    def emit(self,session,kind,**data):
        session['event']+=1;session['events'].append({'seq':session['event'],'kind':kind,**data});session['events']=session['events'][-256:]
    def populate(self,session):
        s=session['state'];code=s['map'];race=s['appearance']['byRace'];session['mobs']=[];session['drops']=[]
        candidates=[];grid=self.data.grids[code];w,h=grid[:2];margin=15 if min(w,h)>64 else 0
        for n in range(margin,h-margin):
            for m in range(margin,w-margin):
                if self.data.spawn_open(code,race,m,n):candidates.append((m,n))
        if not candidates:return
        rows=self.data.pop.get(code,[])
        for row in rows:
            pc=int(row['pc_mtype'])
            if pc not in self.data.mob_mappings:continue
            for i in range(int(row['count'])):
                m,n=self.rng.choice(candidates);mob=self.data.mob(pc);session['id']+=1
                mob.update(id=session['id'],objID=20000+session['id'],x=pixel(m,n)[0],y=pixel(m,n)[1],homeM=m,homeN=n,attackAt=0,moveAt=0,
                    respawn=max(5,int(row['event_delay'] or 5)),generation=session['generation'])
                session['mobs'].append(mob)
        # No client mob counts/positions/stats are accepted by this authority.
    def snapshot(self,session,after):
        s=session['state'];s['stats']=self.data.stats(s)
        s['gm']=bool(self.db.execute('SELECT gm FROM characters WHERE name=?',(s['name'].casefold(),)).fetchone()[0])
        mobs=sorted((m for m in session['mobs'] if distance(m,s)<=18),key=lambda m:distance(m,s))[:96]
        return {'state':s,'mobs':mobs,'drops':session['drops'],'events':[e for e in session['events'] if e['seq']>after],
            'eventSeq':session['event'],'commandSeq':session['seq'],'generation':session['generation'],'serverTime':self.clock()}
    def tick(self,dt):
        now=self.clock()
        for session in self.sessions.values():
            if now-session['seen']>5 or session['paused']:continue
            s=session['state'];s['elapsed']+=dt
            if s['hp']>0:
                for mob in session['mobs']:
                    if mob['hp']<=0:
                        if now>=mob['respawnAt']:
                            mob['hp']=mob['maxHP'];mob['x'],mob['y']=pixel(mob['homeM'],mob['homeN']);mob.pop('consumed',None)
                        continue
                    d=distance(mob,s)
                    if d>20:continue
                    m,n=tile(s['x'],s['y']);safe=self.data.safe(s['map'],s['appearance']['byRace'],m,n)
                    if not safe and d<=1 and self.line(s['map'],mob,s) and now>=mob['attackAt']:
                        mob['attackAt']=now+mob['attackInterval'];amount=self.damage(mob,s['stats']);s['hp']=max(0,s['hp']-amount)
                        self.emit(session,'hurt',amount=amount,objID=mob['objID'])
                        if s['hp']==0:self.emit(session,'death');break
                    elif now>=mob['moveAt']:
                        target=s if not safe and d<=8 else dict(zip(['x','y'],pixel(mob['homeM'],mob['homeN'])))
                        self.move_mob(session,mob,target);mob['moveAt']=now+mob['moveInterval']
            session['drops']=[d for d in session['drops'] if now<d['expires']]
            if now>=session['saveAt']+2:self.persist(s);session['saveAt']=now
    def line(self,code,a,b):
        m,n=tile(a['x'],a['y']);tm,tn=tile(b['x'],b['y'])
        steps=max(abs(tm-m),abs(tn-n))*2
        return all(self.data.open(code,round(m+(tm-m)*i/max(1,steps)),round(n+(tn-n)*i/max(1,steps))) for i in range(steps+1)) and (m==tm or n==tn or (self.data.open(code,m,tn) and self.data.open(code,tm,n)))
    def move_mob(self,session,mob,target):
        s=session['state'];m,n=tile(mob['x'],mob['y']);tm,tn=tile(target['x'],target['y'])
        if max(abs(m-tm),abs(n-tn))<=1:return
        choices=[(dm,dn) for dm in [-1,0,1] for dn in [-1,0,1] if dm or dn]
        occupied={tile(other['x'],other['y']) for other in session['mobs'] if other['hp']>0 and distance(other,mob)<=2}
        start=(m,n);frontier=[(0,0,m,n)];parents={start:None};cost={start:0}
        def open_tile(x,y):return (x,y) not in occupied and (x,y)!=tile(s['x'],s['y']) and self.data.spawn_open(s['map'],s['appearance']['byRace'],x,y)
        for _ in range(384):
            if not frontier:return
            _,g,x,y=heapq.heappop(frontier)
            if max(abs(x-tm),abs(y-tn))<=1 and (x==tm or y==tn or (self.data.open(s['map'],x,tn) and self.data.open(s['map'],tm,y))):
                current=(x,y)
                while parents[current] and parents[current]!=start:current=parents[current]
                mob['x'],mob['y']=pixel(*current);return
            for dm,dn in choices:
                nx,ny=x+dm,y+dn
                if max(abs(nx-m),abs(ny-n))>16 or not open_tile(nx,ny):continue
                if dm and dn and (not open_tile(x+dm,y) or not open_tile(x,y+dn)):continue
                if g+1>=cost.get((nx,ny),10**9):continue
                cost[(nx,ny)]=g+1;parents[(nx,ny)]=(x,y)
                heapq.heappush(frontier,(g+1+max(abs(nx-tm),abs(ny-tn)),g+1,nx,ny))
    def damage(self,attacker,defender):
        diff=attacker['hit']-defender['defense'];chance=min(90,60+diff/1.5) if diff>=0 else max(20,60+diff/1.5)
        if self.rng.randrange(100)>=chance:return 0
        # PC hit chance; mobile physical damage/protection reduction adaptation.
        base=self.rng.randint(attacker['minDamage'],max(attacker['minDamage'],attacker['maxDamage']))
        return max(1,base-int(defender['protection']/10))
    def allocate(self,s,args):
        if s['appearance']['byRace']==1:raise ValueError('Slayer attributes grow through weapon and skill use')
        values=[integer(args.get(k,0),0,10000) for k in ['str','dex','int']]
        if sum(values)<=0 or sum(values)>s['points']:raise ValueError('Not enough unspent attribute points')
        s['allocated']=[a+b for a,b in zip(s['allocated'],values)];s['points']-=sum(values);s['stats']=self.data.stats(s)
    def grant_xp(self,session,amount):
        s=session['state'];s['xp']+=amount
        if s['appearance']['byRace']==1:s['xp']-=amount;return
        while s['level']<150 and s['xp']>=self.data.goal(s):
            s['xp']-=self.data.goal(s);s['level']+=1
            if s['appearance']['byRace']!=1:s['points']+=3
            s['skillPoints']+=1;s['stats']=self.data.stats(s);s['hp']=s['stats']['maxHP'];s['mp']=s['stats']['maxMP'];self.emit(session,'level',level=s['level'])
            self.quests.update(s)
    def attr_xp(self,s,damage):
        if s['appearance']['byRace']!=1:return
        main={'Blade':0,'Sword':0,'Gun':1,'Heal':2,'Bless':2}[s['domain']]
        values=[s['appearance'].get(k,20)+s['allocated'][i]+s['growth'][i] for i,k in enumerate(['wSTR','wDEX','wINT'])]
        total=sum(values);maxattr=200 if s['level']<=100 and total<=300 else 295
        for i in range(3):
            s['attrXP'][i]+=max(1,int(damage*(.8 if i==main else .1)))
            while values[i]<maxattr and s['attrXP'][i]>=self.data.attr_exp.get(values[i],10**9) and total<435:
                if i!=main and total>=(200 if maxattr==200 else 400) and values[i]>=(50 if maxattr==200 else 70):break
                if total>=(300 if maxattr==200 else 435):break
                s['attrXP'][i]-=self.data.attr_exp[values[i]];s['growth'][i]+=1;values[i]+=1;total+=1
        s['stats']=self.data.stats(s)
    def domain_reward(self,session,amount):
        s=session['state']
        if s['appearance']['byRace']!=1:return
        domain=s['domain'];kind={'Blade':1,'Sword':2,'Gun':3,'Heal':4,'Bless':5}[domain]
        s['domainXP'][domain]+=amount
        while s['domainLevels'][domain]<150:
            goal=self.data.domain_exp.get((kind,s['domainLevels'][domain]),10**9)
            if s['domainXP'][domain]<goal:break
            s['domainXP'][domain]-=goal;s['domainLevels'][domain]+=1
            s['level']=max(s['domainLevels'].values());s['stats']=self.data.stats(s);s['hp']=s['stats']['maxHP']
            self.emit(session,'domainLevel',domain=domain,level=s['domainLevels'][domain])
        highest=max(s['domainLevels'],key=lambda k:s['domainLevels'][k]);s['xp']=s['domainXP'][highest]
    def roll_loot(self,session,mob):
        row=self.data.pc[mob['pc']];race={1:'slayer',2:'vampire',3:'ousters'}[session['state']['appearance']['byRace']]
        if not int(row['HasTreasure']):return
        base='Class'+row['MonsterClass'] if int(row['MonsterClass']) else row['EName']
        loot=self.data.loot.get(base+'.'+race+'.bin',{}).get('groups',[])
        def choose(entries):
            weights=[max(0,e['weight']) for e in entries]
            return self.rng.choices(entries,weights=weights)[0] if sum(weights)>0 else None
        for group in loot:
            # Treasure.cpp defines TREASURE_RATIO_MODULUS = 100000.
            if self.rng.randrange(100000)>=group['item_ratio']:continue
            cls=choose(group['classes'])
            if not cls:continue
            item=choose(cls['types'])
            if not item:continue
            mapped=self.data.item_mappings.get((cls['item_class'],item['item_type']))
            if not mapped:self.mapping_skips[(cls['item_class'],item['item_type'])]+=1;continue
            session['id']+=1;session['drops'].append({'objID':300000+session['id'],'kind':mapped[0],'item':mapped[1],'count':1,
                'x':mob['x'],'y':mob['y'],'expires':self.clock()+120})
    def travel(self,session,args):
        s=session['state'];m,n=tile(s['x'],s['y']);target=str(args.get('target',''))
        if s['hp']<=0:raise ValueError('You cannot travel while dead')
        if 'npc' in args:
            npc=self.data.npcs.get(integer(args['npc']));talk=self.data.talks.get(integer(args['talk']))
            if not npc or not talk or str(npc['MapResId'])!=s['map']:raise ValueError('Invalid NPC')
            if int(npc['Contem']) not in [0,s['appearance']['byRace']]:raise ValueError('Wrong race for this NPC')
            if str(npc['NpcIndex']) not in re.findall(r'\d+',str(talk['NPCId'])):raise ValueError('NPC dialogue mismatch')
            if max(abs(m-npc['Xpot']),abs(n-npc['Ypot']))>int(npc['DialogueDistance'] or 10):raise ValueError('Move closer to the NPC')
            match=re.fullmatch(r'2\|(\d+),(\d+),(\d+)',talk['NPCTalkGoto'])
            if not match:raise ValueError('Not a travel dialogue')
            target,tm,tn=match.groups();tm,tn=int(tm),int(tn)
        else:
            portal=next((p for p in self.data.mips[s['map']].get('MPortals',[]) if p['Left']<=m<=p['Right'] and p['Top']<=n<=p['Bottom'] and any(str(c)==target for c in p.get('M_ZoneID',[]))),None)
            if not portal or portal.get('M_Type',0) not in [0,3,{1:1,2:2,3:7}[s['appearance']['byRace']]]:raise ValueError('Stand on the correct passage to travel')
            candidates=[t for t in self.data.transfers if t['MapCode']==s['map'] and t['TargetMapCode']==target]
            if not candidates:raise ValueError('No destination data')
            t=min(candidates,key=lambda t:min(((a[0]-m)**2+(a[1]-n)**2 for a in parse(t['TransferArea'],[])),default=10**9))
            tm,tn=parse(t['TargetPoint']);tm=m if t['TargetType']==2 else tm;tn=n if t['TargetType']==3 else tn
        if target not in self.data.grids:raise ValueError('Map is not available')
        if not self.data.open(target,tm,tn):
            positions=[(tm+dm,tn+dn) for radius in range(1,12) for dm in range(-radius,radius+1) for dn in [-radius,radius] if self.data.open(target,tm+dm,tn+dn)]
            if not positions:raise ValueError('Destination is blocked')
            tm,tn=positions[0]
        s['map']=target;s['x'],s['y']=pixel(tm,tn);session['generation']=secrets.token_hex(8);self.populate(session);self.emit(session,'map')
    def command(self,session,kind,args):
        s=session['state'];now=self.clock()
        if kind=='gm':self.gm(session,args);return
        if kind=='quest':self.quests.command(session,args);return
        if kind=='learn':self.skills.learn(session,args);return
        if kind=='travel':self.travel(session,args);return
        if kind=='allocate':self.allocate(s,args);return
        if kind=='bindResurrection':self.resurrection.bind(session,args);return
        if kind=='revive':
            self.resurrection.revive(session)
            return
        if s['hp']<=0:raise ValueError('Your character is dead')
        if kind=='attack':
            if session['paused'] or now<session['attackAt']:return
            m,n=tile(s['x'],s['y'])
            if self.data.safe(s['map'],s['appearance']['byRace'],m,n):return
            cast=self.skills.prepare(session,args)
            if not cast or cast.get('handled'):return
            targets=[mob for mob in session['mobs'] if (mob['hp']<=0 if cast['category']=='corpse' else mob['hp']>0) and distance(mob,s)<=cast['range'] and self.line(s['map'],mob,s)]
            if not targets:return
            target=args.get('target')
            mob=next((m for m in targets if m['objID']==target),None) if target else min(targets,key=lambda m:distance(m,s))
            if not mob:return
            if cast['category']=='drain' and mob['hp']>mob['maxHP']/3:raise ValueError('Weaken the monster below one-third HP first')
            if cast['category']=='corpse' and mob.get('consumed'):raise ValueError('Corpse was already consumed')
            s[cast['resource']]-=cast['mana'];cast['cooldowns'][cast['id']]=now+cast['delay'];session['attackAt']=now+cast['delay']
            if cast['category']=='corpse':
                mob['consumed']=True;s['hp']=min(s['stats']['maxHP'],s['hp']+max(1,int(mob['maxHP']*.3)));return
            attacker=dict(s['stats'])
            if cast['category']=='damage':
                if cast['meta']['Magic']:attacker['minDamage']=attacker['maxDamage']=max(1,cast['damage'])
                else:attacker['minDamage']+=max(0,cast['damage']);attacker['maxDamage']+=max(0,cast['damage'])
            amount=self.damage(attacker,mob)
            if cast['category']=='drain':amount=mob['hp'];s['hp']=min(s['stats']['maxHP'],s['hp']+amount)
            mob['hp']=max(0,mob['hp']-amount);self.emit(session,'damage',objID=mob['objID'],amount=amount,hp=mob['hp'])
            self.emit(session,'cast',skill=cast['id'],cd=int(cast['delay']*1000))
            self.attr_xp(s,amount)
            if amount:self.domain_reward(session,mob['xp'])
            if mob['hp']==0:
                mob['respawnAt']=now+mob['respawn'];s['kills']+=1;self.grant_xp(session,mob['xp']);self.roll_loot(session,mob);self.emit(session,'kill',objID=mob['objID'])
                self.quests.update(s,monster=mob['monster'])
        elif kind=='potion':
            if s['potions']<=0 or s['hp']>=s['stats']['maxHP']:raise ValueError('No potion needed or available')
            s['potions']-=1;s['hp']=min(s['stats']['maxHP'],s['hp']+65)
        elif kind=='pickup':
            drop=next((d for d in session['drops'] if d['objID']==args.get('objID') and distance(d,s)<=2),None)
            if not drop:raise ValueError('Drop is unavailable or too far away')
            self.add_item(s,drop['kind'],drop['item'],drop['count']);session['drops'].remove(drop)
        elif kind=='equip':self.equip(s,args)
        elif kind=='unequip':
            item=next((i for i in s['inventory'] if i['objID']==args.get('objID')),None)
            if not item or item.get('slot') is None:raise ValueError('Equipment is not worn')
            previous=item.pop('slot')
            try:self.pack_bag(s)
            except ValueError:item['slot']=previous;raise
            s['stats']=self.data.stats(s);s['hp']=min(s['hp'],s['stats']['maxHP']);s['inventoryRevision']+=1
        elif kind=='sort':self.pack_bag(s);s['inventoryRevision']+=1
        elif kind=='buy':
            npc=int(args.get('npc',0));self.quests.near_npc(s,npc)
            shop=self.data.shops.get(npc);goods=self.data.goods.get(int(args.get('item',0)))
            if not shop or not goods or goods['ShopType']!=shop['ShopType'] or not goods['Display']:raise ValueError('This NPC does not sell that item')
            count=integer(args.get('count',1),1,min(99,int(goods['AddLimit'] or 1)))
            cost=int(goods['Price'])*count
            if s['gold']<cost:raise ValueError('Not enough gold')
            kind,item=parse(goods['Commodity']);self.add_item(s,kind,item,count);s['gold']-=cost
            self.emit(session,'purchase')
        elif kind=='sell':
            npc=int(args.get('npc',0));self.quests.near_npc(s,npc)
            item=next((i for i in s['inventory'] if i['objID']==args.get('objID') and i.get('slot') is None),None)
            if not item:raise ValueError('Item is not in your bag')
            meta=self.data.items[(item['kind'],item['item'])]
            if not meta['Sell']:raise ValueError('This item cannot be sold')
            count=integer(args.get('count',1),1,item['count']);item['count']-=count
            price=math.ceil(num(meta['Price'])/4)*count;s['gold']+=price
            if not item['count']:s['inventory'].remove(item)
            self.pack_bag(s);s['inventoryRevision']+=1;self.emit(session,'sale',amount=price)
        elif kind=='use':
            item=next((i for i in s['inventory'] if i['objID']==args.get('objID') and i.get('slot') is None),None)
            if not item:raise ValueError('Item is not in your bag')
            if item['kind']==2:self.equip(s,args);return
            meta=self.data.items[(item['kind'],item['item'])]
            if num(meta['Race']) not in [0,s['appearance']['byRace']] or num(meta['NeedLv'])>s['level']:raise ValueError('Item requirements not met')
            effects=parse(meta['EffectParam'],[])
            heals=[e for e in effects if e[0] in ['Hp','MP','Mp']]
            if not heals:raise ValueError('This item effect has no mobile-server handler yet')
            for effect in heals:
                key='hp' if effect[0]=='Hp' else 'mp';maximum=s['stats']['maxHP' if key=='hp' else 'maxMP']
                amount=int(effect[1])*int(effect[3] if len(effect)>3 else 1)
                s[key]=min(maximum,s.get(key,0)+amount)
            item['count']-=1
            if item['count']==0:s['inventory'].remove(item)
            self.pack_bag(s);s['inventoryRevision']+=1
        else:raise ValueError('This action is not implemented on this private server')
    def gm(self,session,args):
        s=session['state']
        allowed=self.db.execute('SELECT gm FROM characters WHERE name=?',(s['name'].casefold(),)).fetchone()[0]
        if not allowed:raise ValueError('This character has no GM permission')
        command=args.get('command','')
        if not isinstance(command,str) or len(command)>200:raise ValueError('Invalid GM command')
        words=command.split()
        if not words:raise ValueError('Enter a command')
        if words[:2]==['@test','setprop'] and len(words)==4:
            code,value=int(words[2]),integer(int(words[3]),0,10**9)
            if code==217:s['gold']=value
            elif code==212:s['points']=min(10000,value)
            elif code in [201,202,203]:s['allocated'][code-201]=min(10000,value)
            elif code==123:s['hp']=min(value,s['stats']['maxHP'])
            elif code==108:
                level=integer(value,1,150);old=s['level'];s['points']+=max(0,level-old)*3 if s['appearance']['byRace']!=1 else 0
                s['level']=level;s['xp']=0
                if level>old:self.emit(session,'level',level=level)
            else:raise ValueError('This property is not supported by the mobile server yet')
            s['stats']=self.data.stats(s);s['hp']=min(s['hp'],s['stats']['maxHP'])
        elif words[0]=='@skillpoint' and len(words)==2:s['skillPoints']=integer(int(words[1]),0,10000)
        elif words[0]=='@make' and len(words)==4:
            kind,item,count=map(int,words[1:]);integer(count,1,99)
            if (kind,item) not in self.data.items:raise ValueError('Unknown mobile item ID')
            self.add_item(s,kind,item,count)
        elif words[0]=='@mon' and len(words)==3:
            mid,count=map(int,words[1:]);integer(count,1,20)
            pc=next((pc for pc,mobile in self.data.mob_mappings.items() if mobile==mid),None)
            if pc is None:raise ValueError('No V2 combat definition is mapped to this mobile monster')
            m,n=tile(s['x'],s['y']);spots=[(m+dm,n+dn) for dm in range(-5,6) for dn in range(-5,6) if self.data.spawn_open(s['map'],s['appearance']['byRace'],m+dm,n+dn)]
            if not spots:raise ValueError('No legal spawn tile nearby')
            for _ in range(count):
                x,y=self.rng.choice(spots);mob=self.data.mob(pc);session['id']+=1
                mob.update(id=session['id'],objID=20000+session['id'],x=pixel(x,y)[0],y=pixel(x,y)[1],homeM=x,homeN=y,attackAt=0,moveAt=0,respawn=5,generation=session['generation'])
                session['mobs'].append(mob)
        elif words[0]=='@goto' and len(words)==4:
            code=words[1];m,n=map(int,words[2:])
            if code not in self.data.grids:raise ValueError('Map unavailable')
            if not self.data.open(code,m,n):
                positions=[(m+dm,n+dn) for radius in range(1,40) for dm in range(-radius,radius+1) for dn in [-radius,radius] if self.data.open(code,m+dm,n+dn)]
                if not positions:raise ValueError('No open destination')
                m,n=positions[0]
            s['map']=code;s['x'],s['y']=pixel(m,n);session['generation']=secrets.token_hex(8);self.populate(session);self.emit(session,'map')
        else:raise ValueError('Unsupported GM command')
        self.emit(session,'message',text='GM command applied')
    def equip(self,s,args):
        item=next((i for i in s['inventory'] if i['objID']==args.get('objID')),None)
        if not item or item['kind']!=2:raise ValueError('Equipment is not in your bag')
        if item.get('slot') is not None:return
        meta=self.data.items[(2,item['item'])];stats=self.data.stats(s)
        if num(meta['Race']) not in [0,s['appearance']['byRace']] or num(meta['NeedLv'])>s['level']:raise ValueError('Equipment requirements not met')
        if any(stats[k]<num(meta[field]) for k,field in [('str','RequireSTR'),('dex','RequireDEX'),('int','RequireINT')]):raise ValueError('Equipment attribute requirements not met')
        slot_names=self.data.equipment['slots'][str(s['appearance']['byRace'])]
        kind_name=next((k for k,v in self.data.equipment['kinds'].items() if v==meta['Kind']),None)
        slots=[value for key,value in slot_names.items() if re.fullmatch(re.escape(kind_name or 'unavailable')+r'\d*',key)]
        if not slots:raise ValueError('This equipment kind has no slot for your race')
        requested=args.get('slot')
        if requested is not None and requested not in slots:raise ValueError('Equipment slot does not match item')
        occupied={i.get('slot') for i in s['inventory']}
        slot=requested if requested is not None else next((v for v in slots if v not in occupied),slots[0])
        previous=json.loads(json.dumps(s['inventory']))
        for other in s['inventory']:
            if other.get('slot')==slot:other.pop('slot')
        # Validate requirements after removing the previous occupant's bonuses.
        stats=self.data.stats(s)
        if any(stats[k]<num(meta[field]) for k,field in [('str','RequireSTR'),('dex','RequireDEX'),('int','RequireINT')]) or sum(stats[k] for k in ['str','dex','int'])<num(meta.get('RequireSum')):
            s['inventory']=previous;raise ValueError('Equipment attribute requirements not met')
        item['slot']=slot
        try:self.pack_bag(s)
        except ValueError:s['inventory']=previous;raise
        s['stats']=self.data.stats(s);s['hp']=min(s['hp'],s['stats']['maxHP']);s['inventoryRevision']+=1
        if s['appearance']['byRace']==1 and meta['Kind']==1:
            s['domain']={1:'Blade',2:'Gun',3:'Gun',4:'Gun',5:'Gun',6:'Sword',7:'Heal',8:'Bless'}.get(meta['Type'],'Blade')
            s['stats']=self.data.stats(s);s['hp']=min(s['hp'],s['stats']['maxHP'])
    def step(self,name,args):
        session=self.sessions.get(name.casefold())
        if not session:raise ValueError('Enter the world first')
        now=self.clock();s=session['state'];session['seen']=now;session['paused']=bool(args.get('paused',False))
        x,y=args.get('x',s['x']),args.get('y',s['y'])
        if not all(isinstance(v,(int,float)) and math.isfinite(v) for v in [x,y]):raise ValueError('Invalid movement')
        m,n=tile(x,y);budget=min(268,session.get('moveBudget',48)+220*max(0,now-session['lastMove']))
        travel=math.hypot(x-s['x'],y-s['y'])
        steps=max(1,math.ceil(travel/8))
        clear=travel<=budget and all(self.data.open(s['map'],*tile(s['x']+(x-s['x'])*i/steps,s['y']+(y-s['y'])*i/steps)) for i in range(1,steps+1))
        if s['hp']>0 and clear:s['x'],s['y']=x,y;budget-=travel
        session['moveBudget']=budget
        session['lastMove']=now
        commands=args.get('commands',[])
        if commands=={}:commands=[] # Lua JSON encodes an empty table as {}.
        if not isinstance(commands,list):raise ValueError('Invalid commands')
        for command in commands[:32]:
            if not isinstance(command,dict):raise ValueError('Invalid command')
            seq=integer(command['seq'],1,10**9)
            if seq<=session['seq']:continue
            if seq!=session['seq']+1:raise ValueError('Command sequence gap')
            arguments=command.get('args',{})
            if arguments==[]:arguments={} # Both encodings occur in the native Lua JSON library.
            try:
                if not isinstance(arguments,dict):raise ValueError('Invalid command arguments')
                self.command(session,command['kind'],arguments)
            except (ValueError,KeyError,TypeError) as err:self.emit(session,'message',text=str(err))
            session['seq']=seq;self.persist(s)
        return self.snapshot(session,integer(args.get('after',0)))
