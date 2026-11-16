local b=_G_OFFLINE_BRIDGE
assert(b.state.map=='12')
local hero=lt.AgentManager:getHeroAgent()
_G_SPAWN_TEST_POSITION={hero:getPosition()}
local map=lt.AgentManager:getWorldAgent():getMapAgent()
local found=false
for m=210,222 do for n=95,110 do
 local p=map:getPortalSector(m,n)
 if not found and p and p.zoneId==2101 then
  hero:setPosition(lt.MapUtil:calcMNMid(m,n));hero:doProtalEvent(map,m,n);found=true
 end
end end
assert(found,'Original training portal not found')
