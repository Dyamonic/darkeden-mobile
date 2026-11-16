local b=_G_OFFLINE_BRIDGE
assert(b.world)
display.getRunningScene():getLayerManager():getWndLayer():closeAllDlg()
if b.state.hp<=0 then lt.GameModule:sendRelive() end
lt.AutoFightManager:endAutoFight()
local hero=lt.AgentManager:getHeroAgent();local x,y=hero:getPosition()
local e
for _,v in ipairs(b.world.enemies) do v.cooldown=30;if v.hp>0 and not e then e=v end end
assert(e,'Need a live mob for the lethal-hit test')
local mob=lt.AgentManager:getWorldAgent():getAgent(e.objID)
mob:getCmdSystem()._cmdQueue=lt.Queue.new();mob:changeState(lt.MonsterStateIdle.new(mob));mob:setPosition(x,y)
e.x,e.y=x,y;e.cooldown=0;b.state.hp=1;b.world.paused=false
b.world:update(0.1);assert(b.state.hp==0)
b:update(0);assert(not b.hero:isAlive());b:save()
