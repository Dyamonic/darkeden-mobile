local r=display.getRunningScene()._roleLayer
assert(r and #_G_OFFLINE_BRIDGE.store.data.characters==2)
assert(GReadText.KEY_CREATE_ROLE_TIPS7=='Assign all 15 stat points before creating an Ousters character.')
r:btnCreateClick()
local c=r._createRole
c:raceBtnClick(c._raceBtns[3],true)
c._nameInput:setText('Preview')
r:btnNextClick()
