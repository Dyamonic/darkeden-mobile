local r=display.getRunningScene()._roleLayer
r:btnCreateClick()
local c=r._createRole
c:raceBtnClick({raceType=1},true)
c._nameInput:setText('LocalTestB')
