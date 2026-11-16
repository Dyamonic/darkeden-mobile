local b=_G_OFFLINE_BRIDGE
assert(#b.store.data.characters==2,'Expected one free test slot')
local r=display.getRunningScene()._roleLayer
r:btnCreateClick()
local c=r._createRole
c:raceBtnClick(c._raceBtns[3],true)
c._nameInput:setText('SpawnAuditOuster')
