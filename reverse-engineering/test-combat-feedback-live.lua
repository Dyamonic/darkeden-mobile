-- Native fixture: real actors/HP bars/hit/death animation; no server/player edits.
local real=_G_OFFLINE_BRIDGE;local world=lt.AgentManager:getWorldAgent()
local hero=lt.AgentManager:getHeroAgent();local x,y=hero:getPosition();local id=990001
if world:getAgent(id) then world:deleteAgent(id) end
local function clone(t)return (json.decode(json.encode(t))) end
local mob={objID=id,id=970001,monster=5,model=6,name='Combat verification',level=5,
    x=x+192,y=y+96,hp=10,maxHP=10,moveInterval=.7,attackInterval=.775}
real:spawnMonsters(mob)
local actor=assert(world:getAgent(id));actor:changeState(lt.MonsterStateIdle.new(actor))
local state=clone(real.state);state.x,state.y=x,y
local bridge={state=state,world={enemies={clone(mob)}},syncHero=function() end}
local remote=setmetatable({bridge=bridge,after=0,generation='fixture',dropAgents={},
    inventorySignature=tostring(state.inventoryRevision)..':'..state.potions,
    taskSignature=state.questRevision,skillSignature=state.skillRevision,
    pointsSignature=tostring(state.points)..':'..state.stats.str..':'..state.stats.dex..':'..state.stats.int},getmetatable(real.remote))
local result={state=state,generation='fixture',drops={},eventSeq=2,
    mobs={clone(mob)},events={{seq=1,kind='damage',objID=id,amount=4,hp=6},{seq=2,kind='cast',skill=17001,cd=500}}}
result.mobs[1].hp=6;remote:apply(result)
assert(actor:getMonsterData():getCurHp()==6,'Native HP bar did not receive damage')
assert(actor:getCurState()._isHit,'Original hit animation did not start')
local labelFound=false
for _,node in ipairs(world:getMapAgent():getMapActor():getChildren()) do
    if node.getString and node:getString()=='-4' then labelFound=true end
end
assert(labelFound,'Original bitmap damage number was not displayed')
require('cocos.framework.scheduler').performWithDelayGlobal(function()
    assert(world:getAgent(id) and not actor:getCurState()._isHit,'Hit animation failed to finish')
    result.mobs={clone(mob)};result.mobs[1].hp=0;result.eventSeq=5
    result.events={{seq=3,kind='damage',objID=id,amount=6,hp=0},
        {seq=4,kind='cast',skill=17001,cd=500},{seq=5,kind='kill',objID=id}}
    remote:apply(result)
    require('cocos.framework.scheduler').performWithDelayGlobal(function()
        local stateId=actor:getCurStateId()
        local passed=actor:getMonsterData():getCurHp()==0 and
            (stateId==lt.Constant.MONSTER_STATE_DIE or stateId==lt.Constant.MONSTER_STATE_DEAD)
        world:deleteAgent(id)
        assert(passed,'Native mob death animation did not advance')
        local f=assert(io.open(device.writablePath..'combat-native-feedback-pass.txt','w'))
        f:write('PASS real Remote snapshots: native HP 10 -> 6 -> 0, original -4 bitmap label, completed hit reaction, and native death animation; fixture removed; no player/server progress changed')
        f:close()
    end,1.5)
end,1)
