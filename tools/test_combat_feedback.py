"""Run the real Lua combat presentation and snapshot ordering without a live server."""
from pathlib import Path
from lupa import LuaRuntime
root=Path(__file__).resolve().parents[1]/'reverse-engineering/offline'
lua=LuaRuntime(unpack_returned_tuples=True)
lua.globals().Feedback=lua.execute((root/'CombatFeedback.lua').read_text(encoding='utf-8'))
lua.globals().Remote=lua.execute((root/'Remote.lua').read_text(encoding='utf-8'))
lua.execute('''
package.loaded['app.offline.CombatFeedback']=Feedback
local log={};local hp=10
local data={getCurHp=function() return hp end,getMaxHp=function() return 10 end}
local mob={getMonsterData=function() return data end,getMN=function() return 0,0 end,
 getCurStateId=function() return 2001 end,getCmdSystem=function() return {hasCmd=function() return false end} end,
 changeHp=function(self,value) hp=value;log[#log+1]='hp' end}
local hero={getPosition=function() return 0,0 end,getMN=function() return 0,0 end,getDirection=function() return 2 end}
local world={getAgent=function(self,id) return id==20001 and mob or id==1 and hero end,
 onHpChange=function(self,id,value) log[#log+1]='zero';assert(value==0) end}
local acks={};local moves=0
lt={Constant={MONSTER_STATE_IDLE=2001,ErrorCode={Miss=1011}},
 AgentManager={getWorldAgent=function() return world end,getHeroAgent=function() return hero end},
 MapUtil={calcMN=function(self,x,y) return math.floor(x/48),math.floor(-y/24) end,calcDirectionMN=function() return 1 end},
 GameModule={onHpMpChange=function(self,event)
  local p=event.param;log[#log+1]='hit';assert(p.hpChange<0 and p.skillID==17001)
  if p.objID==20001 then mob:changeHp(p.curHP,p.maxHP) else assert(p.objID==1 and p.attackerID==20001) end
 end,onObjDie=function() log[#log+1]='die' end,onAttackAck=function(self,e) acks[#acks+1]=e.param end,
 onObjMove=function() moves=moves+1 end}}
display={getRunningScene=function() return {getLayerManager=function() return {getMainUILayer=function() return {} end} end} end}
local state={hp=100,level=1,map='61',x=0,y=0,inventoryRevision=0,potions=3,questRevision=0,skillRevision=0,points=0,stats={maxHP=100,str=1,dex=1,int=1}}
local before={objID=20001,hp=10,maxHP=10,x=0,y=0}
local b={state=state,world={enemies={before}},syncHero=function() end}
local r=setmetatable({bridge=b,after=0,generation='g',dropAgents={},inventorySignature='0:3',taskSignature=0,skillSignature=0,pointsSignature='0:1:1:1'},Remote)
local result={state=state,generation='g',mobs={{objID=20001,hp=0,maxHP=10,x=0,y=0}},drops={},eventSeq=3,
 events={{seq=1,kind='damage',objID=20001,amount=10,hp=0},{seq=2,kind='cast',skill=17001,cd=500},{seq=3,kind='kill',objID=20001}}}
r:apply(result)
assert(hp==0 and log[1]=='hit' and log[3]=='die','Final hit/HP must reach native presentation before death')
assert(acks[1].targetID==20001 and acks[1].targetX==0 and acks[1].targetY==0,'Cast ack needs the actual target')
local count=#log;r:apply(result);assert(#log==count,'Retried snapshots must not replay damage/death')
result.events={{seq=4,kind='damage',objID=20001,amount=0}};result.eventSeq=4
Feedback.apply(result,3,false);assert(log[#log]=='zero','Misses must have zero-damage feedback')
Feedback.attackAck({skill=17001,cd=500},result.events[1]);assert(acks[#acks].ret==1011)
count=#log;Feedback.apply(result,0,true);assert(#log==count,'Reconnect must not replay old combat')
result.events={{seq=5,kind='hurt',objID=20001,amount=2}};Feedback.apply(result,4,false)
assert(log[#log]=='hit','Incoming damage must use the native hit path')
hp=10;b.world.enemies={{objID=20001,hp=10,maxHP=10,x=0,y=0}}
result.mobs={{objID=20001,hp=10,maxHP=10,x=48,y=0}};result.events={};result.eventSeq=5;r.after=5
r.moveTargets={[20001]='1:0'};r:apply(result)
assert(moves==1,'An idle actor must retry an uncompleted movement target')
''')
print('PASS native HP/hit routing, hit-before-death ordering, target/miss acknowledgments, duplicate/reconnect suppression and stalled movement recovery')
