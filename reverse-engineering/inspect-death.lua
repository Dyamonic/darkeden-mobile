local b=_G_OFFLINE_BRIDGE
local main=display.getRunningScene():getLayerManager():getMainUILayer()
local r=main._comRevive
local a=lt.AgentManager:getHeroAgent()
local f=io.open(device.writablePath..'death-diagnostic.txt','w')
f:write('stateHP '..b.state.hp..' heroHP '..tostring(b.hero:getCurHp())..' alive '..tostring(b.hero:isAlive())..' status '..tostring(b.hero:getStatus())..' visible '..tostring(r:isVisible())..' remain '..tostring(r._remainTs)..'\n');f:close()

