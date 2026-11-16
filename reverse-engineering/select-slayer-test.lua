local r=display.getRunningScene()._roleLayer
assert(r)
r._selectRole:setSelectIndex(1);r._selectRole:switchSelect();r:btnNextClick()
