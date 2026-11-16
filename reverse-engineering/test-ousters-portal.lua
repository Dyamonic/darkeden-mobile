local b=_G_OFFLINE_BRIDGE
assert(b.state.name=='AuditOuster' and b.state.map=='1311')
local w=lt.AgentManager:getWorldAgent()
local map=w:getMapAgent()
local hero=lt.AgentManager:getHeroAgent()
local found=false
for m=30,40 do for n=25,45 do
 local p=map:getPortalSector(m,n)
 if not found and p and p.zoneId==81 then
  hero:setPosition(lt.MapUtil:calcMNMid(m,n))
  hero:doProtalEvent(map,m,n)
  found=true
 end
end end
assert(found,'Original Ousters village exit not found')
