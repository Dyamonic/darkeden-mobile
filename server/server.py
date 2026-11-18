"""DarkEden private server. Run directly to start; use --help for commands."""
import sys


# --- formulas ---
"""Evaluate an allowlisted subset of V2 arithmetic; never eval/exec source text."""
import ast,math
ALLOWED_INPUT={'STR','DEX','INTE','SkillLevel','Level','Damage','DomainLevel','TargetLevel','TargetHP','TargetMaxHP','WeaponDamage'}
CALLS={'min':min,'max':max,'abs':abs,'pow':pow,'ceil':math.ceil,'floor':math.floor,'getPercentValue':lambda x,y:int(x*y/100)}
def expression(source,values):
    def walk(n):
        if isinstance(n,ast.Constant) and isinstance(n.value,(int,float)):return n.value
        if isinstance(n,ast.Name) and n.id in values:return values[n.id]
        if isinstance(n,ast.Attribute) and isinstance(n.value,ast.Name) and n.value.id in ['input','output']:
            return values[n.value.id+'.'+n.attr]
        if isinstance(n,ast.UnaryOp) and isinstance(n.op,(ast.UAdd,ast.USub)):
            v=walk(n.operand);return -v if isinstance(n.op,ast.USub) else v
        if isinstance(n,ast.BinOp):
            a,b=walk(n.left),walk(n.right)
            if isinstance(n.op,ast.Add):return a+b
            if isinstance(n.op,ast.Sub):return a-b
            if isinstance(n.op,ast.Mult):return a*b
            if isinstance(n.op,ast.Div):return int(a/b) if isinstance(a,int) and isinstance(b,int) else a/b
            if isinstance(n.op,ast.Mod):return a%b
        if isinstance(n,ast.Call) and isinstance(n.func,ast.Name) and n.func.id in CALLS:return CALLS[n.func.id](*[walk(a) for a in n.args])
        raise ValueError('Unsupported arithmetic expression')
    return walk(ast.parse(source,mode='eval').body)

def compute(program,inputs):
    values={'input.'+k:v for k,v in inputs.items()}
    for output,expr in program:
        value=expression(expr,values)
        if not math.isfinite(value) or abs(value)>1e12:raise ValueError('Skill formula out of bounds')
        values[output]=value
    return {k[7:]:int(v) for k,v in values.items() if k.startswith('output.')}


# --- spawn_rules ---
"""Race-independent monster exclusions matching map safe areas and portals."""
import math

def contains_polygon(points,x,y):
    inside=False
    for a,b in zip(points,points[1:]+points[:1]):
        cross=(b[0]-a[0])*(y-a[1])-(b[1]-a[1])*(x-a[0])
        if abs(cross)<1e-9 and min(a[0],b[0])<=x<=max(a[0],b[0]) and min(a[1],b[1])<=y<=max(a[1],b[1]):return True
        if (a[1]>y)!=(b[1]>y) and x<(b[0]-a[0])*(y-a[1])/(b[1]-a[1])+a[0]:inside=not inside
    return inside

def exclusion_mask(width,height,rectangles,polygons,portals,whole=False):
    mask=bytearray([1 if whole else 0])*(width*height)
    if whole:return mask
    for rect in [r for r in (rectangles or []) if int(r['Flag'])&0x17]+list(portals or []):
        top=max(0,int(rect['Top']));bottom=min(height-1,int(rect['Bottom']))
        if bottom<top:continue
        for m in range(max(0,int(rect['Left'])),min(width-1,int(rect['Right']))+1):
            mask[m*height+top:m*height+bottom+1]=b'\1'*(bottom-top+1)
    for points in polygons:
        if len(points)<3:continue
        for m in range(max(0,math.floor(min(p[0] for p in points))),min(width-1,math.ceil(max(p[0] for p in points)))+1):
            for n in range(max(0,math.floor(min(p[1] for p in points))),min(height-1,math.ceil(max(p[1] for p in points)))+1):
                if not mask[m*height+n] and contains_polygon(points,m,n):mask[m*height+n]=1
    return mask


# --- quests ---
"""Persistent mobile mission chains, kill/collection/NPC goals and rewards."""
import copy,json,re

def decode(value,default=None):
    try:return json.loads(re.sub(r',\s*([\]}])',r'\1',value))
    except (ValueError,TypeError):return default

class Quests:
    def __init__(self,engine):self.e=engine;self.data=engine.data
    def init(self,s):
        s.setdefault('quests',{});s.setdefault('questRevision',0)
        first={1:310001,2:320001,3:330001}[s['appearance']['byRace']]
        s.setdefault('mainQuest',first)
        self.ensure(s,s['mainQuest'])
    def ensure(self,s,mid):
        row=self.data.missions.get(mid)
        if not row:return
        key=str(mid)
        if key not in s['quests']:
            targets=decode(row['MissionTarget'],[])
            s['quests'][key]={'taskId':mid,'taskState':0,'expirationTime':0,'hadNumMap':[{'key':i+1,'value':0} for i in range(len(targets))]}
            s['questRevision']+=1
        need=decode(row['NeedLv'],[1,0])[0]
        if s['quests'][key]['taskState']==0 and s['level']>=need and row['MissionReceive']==0:
            s['quests'][key]['taskState']=1;s['questRevision']+=1
    def near_npc(self,s,npcid):
        if s['hp']<=0:raise ValueError('You cannot talk to an NPC while dead')
        npc=self.data.npcs.get(npcid)
        if not npc or str(npc['MapResId'])!=s['map']:raise ValueError('This NPC is not on your map')
        m,n=int(s['x']//48),int(-s['y']//24)
        if max(abs(m-npc['Xpot']),abs(n-npc['Ypot']))>int(npc['DialogueDistance'] or 10):raise ValueError('Move closer to the NPC')
        if int(npc['Contem']) not in [0,s['appearance']['byRace']]:raise ValueError('NPC is not available to your race')
        return npc
    def update(self,s,monster=None,npc=None,talk=None):
        self.ensure(s,s['mainQuest'])
        for task in s['quests'].values():
            if task['taskState']!=1:continue
            row=self.data.missions[task['taskId']];targets=decode(row['MissionTarget'],[]);changed=False
            for i,target in enumerate(targets):
                old=task['hadNumMap'][i]['value'];value=old
                if row['ObjectType']==1 and monster in target[1:]:value+=1
                elif row['ObjectType']==7 and len(target)>=3 and npc==target[1] and talk==target[2]:value=target[0]
                elif row['ObjectType']==9 and len(target)>=3:
                    value=sum(item['count'] for item in s['inventory'] if item['item']==target[2])
                value=min(target[0],value)
                if old!=value:task['hadNumMap'][i]['value']=value;changed=True
            if targets and all(task['hadNumMap'][i]['value']>=goal[0] for i,goal in enumerate(targets)):
                task['taskState']=2;changed=True
            if changed:s['questRevision']+=1
    def command(self,session,args):
        s=session['state'];action=args.get('action');mid=int(args.get('id',0))
        if action=='talk':
            npc=int(args.get('npc',0));talk=int(args.get('talk',0));self.near_npc(s,npc)
            self.update(s,npc=npc,talk=talk);return
        row=self.data.missions.get(mid)
        if not row:raise ValueError('Unknown mission')
        race=str(s['appearance']['byRace'])
        if race not in re.findall(r'\d+',str(row['Race'])) and str(row['Race'])!='0':raise ValueError('Mission is not available to your race')
        if mid!=s['mainQuest'] and str(mid) not in s['quests']:raise ValueError('Mission is not unlocked')
        self.ensure(s,mid);task=s['quests'][str(mid)]
        if action=='accept':
            if s['level']<decode(row['NeedLv'],[1,0])[0]:raise ValueError('Your level is too low for this mission')
            if row['AcceptanceNPCID']:self.near_npc(s,row['AcceptanceNPCID'])
            if task['taskState']==0:task['taskState']=1;s['questRevision']+=1
        elif action in ['claim','commit']:
            self.update(s)
            if task['taskState']!=2:raise ValueError('Mission objectives are not complete')
            if row['HandingOverNPCID']:self.near_npc(s,row['HandingOverNPCID'])
            before=copy.deepcopy(s)
            try:
                if row['ObjectType']==9:
                    for goal in decode(row['MissionTarget'],[]):
                        left=goal[0]
                        for item in list(s['inventory']):
                            if item['item']!=goal[2] or item.get('slot') is not None:continue
                            take=min(left,item['count']);item['count']-=take;left-=take
                            if not item['count']:s['inventory'].remove(item)
                        if left:raise ValueError('Required mission items are missing')
                for reward in decode(row['Reward'],[]):
                    if len(reward)<5:raise ValueError('Unsupported reward record')
                    item,count=int(reward[3]),int(reward[4])
                    if item==1403001:s['gold']+=count
                    elif item==1401001:s['repute']=s.get('repute',0)+count
                    elif item>=1400000:
                        s.setdefault('currencies',{})[str(item)]=s.get('currencies',{}).get(str(item),0)+count
                    else:
                        kind=1 if (1,item) in self.data.items else 2
                        self.e.add_item(s,kind,item,count)
            except Exception:s.clear();s.update(before);raise
            task['taskState']=3;s['questRevision']+=1
            nxt=row['AfterMissionId']
            if mid==s['mainQuest'] and isinstance(nxt,int) and nxt in self.data.missions:s['mainQuest']=nxt;self.ensure(s,nxt)
            self.e.emit(session,'questReward',taskId=mid)
        elif action=='abandon':
            if row['MissionType']==3:raise ValueError('Main missions cannot be abandoned')
            s['quests'].pop(str(mid),None);s['questRevision']+=1
        else:raise ValueError('Unsupported mission action')


# --- skills ---
"""Server-owned learning, resources and direct/healing V2 skill formulas."""
import json,re

class Skills:
    def __init__(self,engine):self.e=engine;self.data=engine.data
    def init(self,s):
        if 'skills' not in s:
            s['skills']={'17001':1,'17002':1}
            if s['appearance']['byRace']==2:s['skills'].update({'11018':1,'11019':1,'11020':1})
            if s['appearance']['byRace']==3:s['skills']['13001']=1
            s['skillRevision']=0
    def category(self,sid):
        if sid in [17001,17002]:return 'normal'
        if sid in [11018,11019,13001]:return 'drain'
        if sid==11020:return 'corpse'
        meta=self.data.skills.get(sid);formula=self.data.skill_formulas.get(str(sid))
        if not meta or not formula or meta['PassiveSkill']:return None
        if re.search(r'cure|heal|restore',meta['ENName'],re.I):return 'heal'
        if not meta['Duration'] and (meta['Physic'] or meta['Magic']) and any(out=='output.Damage' for out,_ in formula['program']):return 'damage'
        return None
    def learn(self,session,args):
        s=session['state'];sid=int(args.get('id',0));meta=self.data.skills.get(sid)
        if not meta or not int(meta['Race'])&(1<<(s['appearance']['byRace']-1)):raise ValueError('Skill is not available to your race')
        if not self.category(sid):raise ValueError('This skill needs an additional V2 effect adapter')
        required_level=s['level']
        if s['appearance']['byRace']==1:
            domain={1:'Blade',2:'Sword',3:'Gun',4:'Heal',5:'Bless'}.get(meta['Domain'])
            required_level=s.get('domainLevels',{}).get(domain,s['level'])
        if required_level<int(meta['NeedLevel']):raise ValueError('Your domain/character level is too low for this skill')
        current=s['skills'].get(str(sid),0);upgrade=bool(args.get('upgrade'))
        if current and not upgrade:raise ValueError('Skill already learned')
        if upgrade and not current:raise ValueError('Learn the skill first')
        if current>=min(150,s['level']):raise ValueError('Skill level cannot exceed your character level')
        cost=int(meta['LeveUpPoint'] if current else meta['SkillPoint'])
        if cost>s['skillPoints']:raise ValueError('Not enough skill points')
        for field in ['RequireSkillBattle','RequireSkillMagic']:
            try:requirements=json.loads(meta[field] or '[]')
            except ValueError:requirements=[]
            for requirement in requirements:
                if isinstance(requirement,list) and len(requirement)>=2 and s['skills'].get(str(requirement[0]),0)<requirement[1]:raise ValueError('Required skill not learned')
        s['skillPoints']-=cost;s['skills'][str(sid)]=current+1;s['skillRevision']+=1
        self.e.emit(session,'learn',skill=sid,upgrade=upgrade)
    def prepare(self,session,args):
        s=session['state'];sid=int(args.get('skill') or 17001);meta=self.data.skills.get(sid)
        if not meta or not s['skills'].get(str(sid)):raise ValueError('Skill is not learned')
        weapons=[self.data.items[(2,i['item'])] for i in s['inventory'] if i['kind']==2 and i.get('slot') is not None and self.data.items[(2,i['item'])]['Kind']==1]
        if sid==17002 and not any(s['appearance']['byRace']==1 and m['Type'] in [2,3,4,5] for m in weapons):raise ValueError('Equip a gun for ranged attacks')
        category=self.category(sid)
        if not category:raise ValueError('This skill has no server effect adapter')
        now=self.e.clock();cooldowns=session.setdefault('cooldowns',{})
        if now<cooldowns.get(sid,0):return None
        stats=s['stats'];base=self.e.rng.randint(stats['minDamage'],stats['maxDamage'])
        level=s['skills'][str(sid)]
        inputs={'STR':stats['str'],'DEX':stats['dex'],'INTE':stats['int'],'SkillLevel':level,'Level':s['level'],
            'Damage':base,'DomainLevel':s['level'],'TargetLevel':s['level'],'TargetHP':s['hp'],'TargetMaxHP':stats['maxHP'],'WeaponDamage':base}
        formula=self.data.skill_formulas.get(str(sid))
        output=compute(formula['program'],inputs) if formula else {}
        mana=int(meta['Mana']);resource='hp' if s['appearance']['byRace']==2 else 'mp'
        if s.get(resource,0)<mana or (resource=='hp' and s['hp']<=mana):raise ValueError('Not enough HP/MP to use this skill')
        if category=='heal':
            if s['hp']>=stats['maxHP']:raise ValueError('Health is already full')
            s[resource]-=mana;s['hp']=min(stats['maxHP'],s['hp']+max(1,output.get('Damage',stats['int'])))
            cooldowns[sid]=now+max(.2,int(meta['CD'])/1000);self.e.emit(session,'cast',skill=sid,cd=int(meta['CD']));return {'handled':True}
        return {'id':sid,'meta':meta,'category':category,'base':base,'damage':output.get('Damage',0),'range':max(1,int(meta['Range'])),
            'mana':mana,'resource':resource,'cooldowns':cooldowns,'delay':max(.5,int(meta['CD'])/1000),'level':level}


# --- resurrection ---
"""NPC-bound resurrection using the mobile Map.ResurrectionAddress records."""
import re

HOMES={1:('12',117,145),2:('1003',65,70),3:('1311',33,75)}

class Resurrection:
    def __init__(self,engine):self.e=engine;self.data=engine.data
    def destination(self,code,m,n):
        code=str(code)
        if code not in self.data.grids:raise ValueError('Resurrection map is unavailable')
        def available(x,y):return self.data.open(code,x,y) and not self.data.portal(code,x,y)
        if available(m,n):return {'map':code,'m':m,'n':n}
        for radius in range(1,13):
            for dx in range(-radius,radius+1):
                for dy in range(-radius,radius+1):
                    if max(abs(dx),abs(dy))==radius and available(m+dx,n+dy):return {'map':code,'m':m+dx,'n':n+dy}
        raise ValueError('Resurrection destination is blocked')
    def default(self,s):return self.destination(*HOMES[s['appearance']['byRace']])
    def bind(self,session,args):
        s=session['state'];npcid=integer(args.get('npc'));npc=self.e.quests.near_npc(s,npcid)
        talks=[talk for talk in self.data.talks.values() if str(talk['NPCTalkGoto']).strip()=='10'
               and str(npcid) in re.findall(r'\d+',str(talk['NPCId']))
               and str(talk['TalkId']) in re.findall(r'\d+',str(npc['StartTalkId']))]
        if not talks:raise ValueError('This NPC cannot set a resurrection point')
        row=self.data.maps[str(npc['MapResId'])]
        address=next((p for p in parse(row['ResurrectionAddress'],[]) if len(p)==4 and p[0]==s['appearance']['byRace']),None)
        if not address:raise ValueError('No resurrection destination is defined for your race')
        point=self.destination(str(address[1]),int(address[2]),int(address[3]));point['npc']=npcid
        s['resurrection']=point;self.e.emit(session,'resurrectionBound',npc=npcid)
    def revive(self,session):
        s=session['state']
        if s['hp']>0:return
        point=s.get('resurrection') or self.default(s)
        try:point=self.destination(point['map'],int(point['m']),int(point['n']))
        except (ValueError,KeyError,TypeError):point=self.default(s)
        changed=s['map']!=point['map'];s['map']=point['map'];s['x'],s['y']=pixel(point['m'],point['n'])
        s['stats']=self.data.stats(s);s['hp']=s['stats']['maxHP']
        session['attackAt']=self.e.clock()+2;session['lastMove']=self.e.clock();session['moveBudget']=0
        if changed:
            import secrets
            session['generation']=secrets.token_hex(8);self.e.populate(session)
        self.e.emit(session,'revive')


# --- engine ---
"""Private PvE authority using mobile assets and explicitly mapped V2 reference data."""
from pathlib import Path
import collections,csv,gzip,hashlib,heapq,json,math,random,re,secrets,sqlite3,struct,time

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
        db=sqlite3.connect(root/'android-studio-project/editable-apk/assets/win32/res/data/data.bin');db.row_factory=sqlite3.Row
        self.maps={str(r['MapCode']):dict(r) for r in db.execute('SELECT * FROM Map')}
        self.safe_polygons=collections.defaultdict(list)
        for row in db.execute('SELECT * FROM SafeArea'):
            if int(row['Race'])&0x17:self.safe_polygons[str(row['MapCode'])].append(parse(row['SafeArea'],[]))
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
            with (root/'server/data/pc-server'/name).open(encoding='utf-8',newline='') as f:return list(csv.DictReader(f))
        self.pc={int(r['MType']):r for r in csvdata('MonsterInfo.csv')}
        self.zones={str(r['ZoneID']):r for r in csvdata('ZoneInfo.csv')}
        self.pop=collections.defaultdict(list)
        for row in csvdata('zone-populations.csv'):self.pop[row['zone_id']].append(row)
        self.loot=json.loads(gzip.decompress((root/'server/data/pc-server/treasure-tables.json.gz').read_bytes()))
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
            path=root/'android-studio-project/editable-apk/assets/win32/res/map/data'/f"{meta['ResCode']}.bin"
            if not path.is_file():continue
            raw=path.read_bytes();width,height=struct.unpack_from('<HH',raw)
            assert len(raw)==4+width*height,(path,len(raw),width,height)
            self.grids[code]=(width,height,raw[4:])
            mip=root/'android-studio-project/editable-apk/assets/win32/res/map/mip'/meta['RectJson']
            self.mips[code]=parse(mip.read_text(encoding='utf-8'),{}) if mip.is_file() else {}
        db.close()
        self.no_monsters={};self._spawn_tiles={}
        for code,(width,height,_) in self.grids.items():
            mip=self.mips[code]
            self.no_monsters[code]=exclusion_mask(width,height,mip.get('SafeRects',[]),self.safe_polygons[code],
                mip.get('MPortals',[]),bool(self.maps[code]['WholeMapSafe']))

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
    def spawn_open(self,code,race,m,n):
        # A monster cannot spawn in another race's sanctuary either.
        code=str(code)
        return self.open(code,m,n) and not self.no_monsters[code][m*self.grids[code][1]+n]
    def spawn_tiles(self,code):
        code=str(code)
        if code not in self._spawn_tiles:
            w,h,_=self.grids[code];margin=15 if min(w,h)>64 else 0
            self._spawn_tiles[code]=tuple((m,n) for n in range(margin,h-margin) for m in range(margin,w-margin) if self.spawn_open(code,1,m,n))
        return self._spawn_tiles[code]
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
        candidates=self.data.spawn_tiles(code)
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
                            if not self.data.spawn_open(s['map'],s['appearance']['byRace'],mob['homeM'],mob['homeN']):
                                candidates=self.data.spawn_tiles(s['map'])
                                if not candidates:mob['respawnAt']=now+5;continue
                                mob['homeM'],mob['homeN']=self.rng.choice(candidates)
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


# --- run ---
"""Loopback development server. Runtime database/keys are deliberately outside Git."""
from pathlib import Path
import argparse,hmac,json,os,secrets,signal,threading,time
from http.server import BaseHTTPRequestHandler,ThreadingHTTPServer

DEFAULT=Path(os.environ.get('LOCALAPPDATA',Path.home()))/'DarkEdenMobileServer'

def serve_main():
    p=argparse.ArgumentParser();p.add_argument('--host',default='127.0.0.1');p.add_argument('--port',type=int,default=8088)
    p.add_argument('--state-dir',type=Path,default=DEFAULT);args=p.parse_args()
    args.state_dir.mkdir(parents=True,exist_ok=True)
    keyfile=args.state_dir/'connection.json'
    if not keyfile.exists():keyfile.write_text(json.dumps({'token':secrets.token_urlsafe(36)},indent=2)+'\n')
    key=json.loads(keyfile.read_text())['token'];game=Engine(args.state_dir/'world.sqlite3');lock=threading.RLock();stop=threading.Event()
    (args.state_dir/'server.pid').write_text(str(os.getpid()))
    shutdown=args.state_dir/'shutdown'
    if shutdown.exists():shutdown.unlink()
    class Handler(BaseHTTPRequestHandler):
        def log_message(self,*args):pass
        def reply(self,code,data):
            body=json.dumps(data,separators=(',',':'),allow_nan=False).encode()
            self.send_response(code);self.send_header('Content-Type','application/json');self.send_header('Content-Length',str(len(body)));self.end_headers();self.wfile.write(body)
        def do_GET(self):
            self.reply(200,{'service':'DarkEden Mobile Private Server','protocol':1,'status':'ready'}) if self.path=='/health' else self.reply(404,{'error':'Not found'})
        def do_POST(self):
            data={}
            try:
                size=int(self.headers.get('Content-Length','0'))
                if not 0<size<=262144:raise ValueError('Invalid request size')
                data=json.loads(self.rfile.read(size))
                if not isinstance(data,dict):raise ValueError('Invalid request')
                if not isinstance(data.get('token'),str) or not hmac.compare_digest(data['token'],key):self.reply(401,{'error':'Connection key rejected'});return
                with lock:
                    if self.path=='/v1/roster':result={'characters':game.roster()}
                    elif self.path=='/v1/create':result={'state':game.create(data['name'],data['appearance'])}
                    elif self.path=='/v1/enter':result=game.enter(data['name'])
                    elif self.path=='/v1/step':result=game.step(data['name'],data)
                    else:self.reply(404,{'error':'Unknown operation'});return
                    self.reply(200,result)
            except (ValueError,KeyError,TypeError,OverflowError) as err:
                # The bundled legacy Cocos HTTP binding discards non-2xx bodies.
                self.reply(200 if isinstance(data,dict) and data.get('transport')=='cocos' else 400,{'error':str(err)})
            except (BrokenPipeError,ConnectionResetError):pass
            except Exception:
                import traceback
                with (args.state_dir/'errors.log').open('a',encoding='utf-8') as f:traceback.print_exc(file=f)
                self.reply(500,{'error':'Server operation failed; inspect the local server log'})
    def tick():
        previous=time.monotonic()
        while not stop.wait(.1):
            if shutdown.exists():http.shutdown();return
            now=time.monotonic()
            try:
                with lock:game.tick(min(.25,now-previous))
            except Exception:
                import traceback
                with (args.state_dir/'errors.log').open('a',encoding='utf-8') as f:traceback.print_exc(file=f)
            previous=now
    http=ThreadingHTTPServer((args.host,args.port),Handler);threading.Thread(target=tick,daemon=True).start()
    print(f'DarkEden mobile server ready on {args.host}:{args.port}',flush=True)
    try:http.serve_forever()
    finally:
        stop.set()
        with lock:
            for session in game.sessions.values():game.persist(session['state'])
        http.server_close();game.db.close()
        (args.state_dir/'server.pid').unlink(missing_ok=True);shutdown.unlink(missing_ok=True)



# --- manage ---
"""Manage this project's hidden local server and emulator connection."""
from pathlib import Path
import argparse,datetime,json,os,secrets,sqlite3,subprocess,sys,time,urllib.request
STATE=Path(os.environ.get('LOCALAPPDATA',Path.home()))/'DarkEdenMobileServer'
ADB=Path.home()/'AppData/Local/Android/Sdk/platform-tools/adb.exe'
def health():
    try:
        with urllib.request.urlopen('http://127.0.0.1:8088/health',timeout=1) as r:return json.load(r).get('protocol')==1
    except Exception:return False
def manage_main():
    p=argparse.ArgumentParser();p.add_argument('action',choices=['setup','start','stop','status','connect']);p.add_argument('--serial',default='emulator-5554');args=p.parse_args()
    STATE.mkdir(parents=True,exist_ok=True)
    def adb(*cmd):return subprocess.run([str(ADB),'-s',args.serial,*cmd],check=True,capture_output=True)
    if args.action=='setup':
        probe=Engine(STATE/'world.sqlite3')
        imported=bool(probe.db.execute("SELECT 1 FROM metadata WHERE key='imported'").fetchone());probe.db.close()
        if not imported:
            stamp=datetime.datetime.now().strftime('%Y%m%d-%H%M%S');backup=STATE/'backups'/stamp;backup.mkdir(parents=True)
            for name in ['offline-characters-v2.json','offline-characters-v2.json.bak','offline-save-v1.json','offline-save-v1.json.bak']:
                r=subprocess.run([str(ADB),'-s',args.serial,'exec-out','run-as','com.yofijoy.tzlyby','cat','files/'+name],capture_output=True)
                if r.returncode==0:(backup/name).write_bytes(r.stdout)
            roster=json.loads((backup/'offline-characters-v2.json').read_text(encoding='utf-8'))
            game=Engine(STATE/'world.sqlite3');game.import_roster(roster);game.db.close()
            print('Backed up and imported',len(roster['characters']),'characters; originals:',backup)
        else:print('Existing server database retained')
    if args.action in ['setup','start']:
        if not health():
            log=(STATE/'stdout.log').open('ab')
            subprocess.Popen([sys.executable,str(Path(__file__).resolve()),'serve','--state-dir',str(STATE)],cwd=ROOT,stdout=log,stderr=log,
                creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0));log.close()
            for _ in range(100):
                if health():break
                time.sleep(.1)
            if not health():raise RuntimeError('Server did not start; inspect '+str(STATE/'stdout.log'))
        print('Private server ready at 127.0.0.1:8088')
    if args.action in ['setup','start','connect']:
        secret=json.loads((STATE/'connection.json').read_text())
        config=STATE/'mobile-server.json';config.write_text(json.dumps({'url':'http://127.0.0.1:8088','token':secret['token']}))
        adb('reverse','tcp:8088','tcp:8088')
        adb('push',str(config),'/data/local/tmp/mobile-server-config.json')
        adb('shell','run-as','com.yofijoy.tzlyby','cp','/data/local/tmp/mobile-server-config.json','files/mobile-server.json')
        adb('shell','rm','/data/local/tmp/mobile-server-config.json')
        print('Connected',args.serial,'using its private app configuration')
    if args.action=='stop':
        (STATE/'shutdown').write_text('stop')
        for _ in range(100):
            if not health():break
            time.sleep(.1)
        print('Server stopped' if not health() else 'Server is still shutting down')
    if args.action=='status':print('running' if health() else 'stopped')



# --- admin ---
"""Local administrator operations; no remote promotion/import endpoints exist."""
from pathlib import Path
import argparse,json,os,sqlite3

def admin_main():
    p=argparse.ArgumentParser();p.add_argument('--state-dir',type=Path,default=Path(os.environ.get('LOCALAPPDATA',Path.home()))/'DarkEdenMobileServer')
    sub=p.add_subparsers(dest='action',required=True)
    imp=sub.add_parser('import');imp.add_argument('roster',type=Path)
    gm=sub.add_parser('gm');gm.add_argument('name');gm.add_argument('--revoke',action='store_true')
    sub.add_parser('status');args=p.parse_args();args.state_dir.mkdir(parents=True,exist_ok=True)
    game=Engine(args.state_dir/'world.sqlite3')
    if args.action=='import':
        roster=json.loads(args.roster.read_text(encoding='utf-8-sig'));game.import_roster(roster);print('Imported',len(roster['characters']),'characters; original roster kept')
    elif args.action=='gm':
        count=game.db.execute('UPDATE characters SET gm=? WHERE name=?',(0 if args.revoke else 1,args.name.casefold())).rowcount
        game.db.commit();assert count==1,'Character not found';print('GM role updated; reconnect this character')
    else:
        for row in game.db.execute('SELECT name,gm FROM characters'):print(row[0], 'GM' if row[1] else 'player')
    game.db.close()



def main():
    commands = {'start', 'stop', 'status', 'setup', 'connect', 'serve', 'admin'}
    command = sys.argv[1] if len(sys.argv) > 1 else 'start'
    if command in ('-h', '--help'):
        print('Usage: py server.py [start|stop|status|setup|connect|serve|admin]')
        print('Default: start the local server and connect emulator-5554.')
        print('Use serve --help or admin --help for additional options.')
        return
    if command not in commands:
        raise SystemExit('Unknown command. Use --help for usage.')
    if command == 'serve':
        del sys.argv[1]
        serve_main()
    elif command == 'admin':
        del sys.argv[1]
        admin_main()
    else:
        if len(sys.argv) == 1:
            sys.argv.append('start')
        manage_main()


if __name__ == '__main__':
    main()
