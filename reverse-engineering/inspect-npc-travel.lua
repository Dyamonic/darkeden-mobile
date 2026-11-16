local b=_G_OFFLINE_BRIDGE
local m,n=lt.AgentManager:getHeroAgent():getMN()
local f=io.open(device.writablePath..'npc-travel-state.json','w');f:write(json.encode({map=b.state.map,m=m,n=n,hp=b.state.hp,gold=b.state.gold,race=b.state.appearance.byRace,name=b.state.name}));f:close()
