local b=_G_OFFLINE_BRIDGE
local data=require('app.offline.WorldData')
local race=b.state.appearance and b.state.appearance.byRace or 1
local world=lt.AgentManager:getWorldAgent()
assert(world:getMapCode()==b.state.map,'Rendered map differs from save')
assert(b.store.data.characters[2].map~='12','Vampire legacy spawn was not corrected')
if race~=1 then
 local home=data.homes[race]
 assert(b.state.map==home.map)
 assert(#b.world.enemies==0,'Safe village contains mobs')
 assert(world:getMapAgent():getWholeMapSafe())
end
assert(not display.getRunningScene():getLayerManager():getMainUILayer()._view:getChild('comChat'):isVisible())
local f=io.open(device.writablePath..'race-start-results.txt','a')
f:write(string.format('PASS race=%d map=%s name=%s x=%.0f y=%.0f enemies=%d hp=%d gold=%d\n',race,b.state.map,world:getMapAgent():getMapName(),b.state.x,b.state.y,#b.world.enemies,b.state.hp,b.state.gold));f:close()
