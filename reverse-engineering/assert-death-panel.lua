local b=_G_OFFLINE_BRIDGE
local main=display.getRunningScene():getLayerManager():getMainUILayer()
local r=main._comRevive
assert(b.state.hp==0 and not b.hero:isAlive(),'Player must remain dead')
assert(r:isVisible(),'Original revive panel must be visible')
assert(r._remainTs and r._remainTs>30,'Original countdown must not expire immediately')
assert(b.store:load().hp==0,'Dead save must persist')
local f=io.open(device.writablePath..'death-panel-pass.txt','w');f:write('PASS zero HP, original death panel, live countdown, persistent dead save\n');f:close()
