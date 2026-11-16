local r=display.getRunningScene()._roleLayer
assert(r)
r._selectRole:setSelectIndex(2);r._selectRole:switchSelect()
r:btnNextClick()
