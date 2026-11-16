local b=_G_OFFLINE_BRIDGE
assert(b.state.map=='2101')
local hero=lt.AgentManager:getHeroAgent()
local map=lt.AgentManager:getWorldAgent():getMapAgent()
local found=false
for m=0,255 do for n=0,255 do
 local p=map:getPortalSector(m,n)
 if not found and p and p.zoneId==12 then
  hero:setPosition(lt.MapUtil:calcMNMid(m,n));hero:doProtalEvent(map,m,n);found=true
 end
end end
assert(found)
