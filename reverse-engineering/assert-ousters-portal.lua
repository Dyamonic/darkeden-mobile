local b=_G_OFFLINE_BRIDGE
local w=lt.AgentManager:getWorldAgent()
assert(b.state.map=='81' and w:getMapCode()=='81','Original portal did not enter Castalo Northeast')
assert(not b.transferring)
assert(b.store:load().map=='81','Destination not saved')
local f=io.open(device.writablePath..'portal-test.txt','w')
f:write('PASS original village portal, map 1311 to 81, live map and saved destination, enemies='..#b.world.enemies..'\n');f:close()
