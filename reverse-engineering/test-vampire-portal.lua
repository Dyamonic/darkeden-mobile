local b=_G_OFFLINE_BRIDGE
assert(b.state.appearance.byRace==2 and b.state.map=='1003')
local map=lt.AgentManager:getWorldAgent():getMapAgent()
local hero=lt.AgentManager:getHeroAgent()
local found=false
for m=92,103 do for n=65,80 do
 local p=map:getPortalSector(m,n)
 if not found and p and p.zoneId==23 then
  hero:setPosition(lt.MapUtil:calcMNMid(m,n));hero:doProtalEvent(map,m,n);found=true
 end
end end
assert(found,'Original Vampire village exit not found')
