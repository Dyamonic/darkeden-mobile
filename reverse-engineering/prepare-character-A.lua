local r=display.getRunningScene()._roleLayer
assert(r._openType:getSelectedIndex()==1,'Creation screen must be open')
r._createRole._nameInput:setText('LocalTestA')
