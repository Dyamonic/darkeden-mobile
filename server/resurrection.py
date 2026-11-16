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
        from engine import integer,parse
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
        from engine import pixel
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
