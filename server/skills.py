"""Server-owned learning, resources and direct/healing V2 skill formulas."""
import json,re
from formulas import compute

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
