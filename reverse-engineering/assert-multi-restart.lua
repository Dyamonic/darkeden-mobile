local b=_G_OFFLINE_BRIDGE
assert(#b.store.data.characters==3,'All characters must survive restart')
assert(b.store.data.selected==1 and b.state.name=='Wanderer')
assert(b.store.data.characters[2].name=='LocalTestA' and b.store.data.characters[2].appearance.byRace==2)
assert(b.store.data.characters[3].name=='LocalTestB' and b.store.data.characters[3].appearance.byRace==1)
local r=display.getRunningScene()._roleLayer
r:btnCreateClick()
assert(r._openType:getSelectedIndex()==0,'Full roster must stay in selection')
local f=io.open(device.writablePath..'multi-restart-pass.txt','w')
f:write('PASS all three characters and selected slot persist after restart; full roster guarded\n');f:close()
