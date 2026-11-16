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
