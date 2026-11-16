local b=_G_OFFLINE_BRIDGE
assert(b.world)
local a=lt.AgentManager:getHeroAgent()
local x,y=a:getPosition()
for _,e in ipairs(b.world.enemies) do e.cooldown=30 end
local e=b.world.enemies[1]
assert(e.hp>0)
local mob=lt.AgentManager:getWorldAgent():getAgent(e.objID)
mob:getCmdSystem()._cmdQueue=lt.Queue.new()
mob:changeState(lt.MonsterStateIdle.new(mob));mob:setPosition(x,y)
e.x,e.y=x,y;e.cooldown=0
b.state.hp=1;b.world.paused=false
b.world:update(0.1)
assert(b.state.hp==0,'Lethal hit must reach zero HP')
b:update(0)
assert(not b.hero:isAlive(),'Original hero must be dead')
b:save()
