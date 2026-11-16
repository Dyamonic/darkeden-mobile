local b=_G_OFFLINE_BRIDGE
assert(b.state.map=='23' and lt.AgentManager:getWorldAgent():getMapCode()=='23')
assert(not b.transferring and b.store:load().map=='23')
local f=io.open(device.writablePath..'portal-test.txt','a')
f:write('PASS original Vampire village portal, map 1003 to 23, live map and saved destination, enemies='..#b.world.enemies..'\n');f:close()
