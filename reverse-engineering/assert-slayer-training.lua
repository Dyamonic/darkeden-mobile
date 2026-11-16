local b=_G_OFFLINE_BRIDGE
assert(b.state.map=='2101' and lt.AgentManager:getWorldAgent():getMapCode()=='2101')
assert(#b.world.enemies>0)
for _,e in ipairs(b.world.enemies) do assert(e.monster==4 and e.name=='Dead Body') end
local f=io.open(device.writablePath..'portal-test.txt','a')
f:write('PASS original Slayer training portal, map 12 to 2101, quest-linked Dead Body population='..#b.world.enemies..'\n');f:close()
