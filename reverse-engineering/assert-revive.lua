local b=_G_OFFLINE_BRIDGE
local main=display.getRunningScene():getLayerManager():getMainUILayer()
assert(b.state.hp>0 and b.hero:isAlive(),'Revive must restore alive state')
assert(not main._comRevive:isVisible(),'Original revive panel must close')
assert(b.store:load().hp>0,'Revival must be saved')
local f=io.open(device.writablePath..'revive-pass.txt','w');f:write('PASS original revive button, alive state, closed panel, saved revival\n');f:close()
