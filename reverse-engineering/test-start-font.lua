local scene=display.getRunningScene()
local button=scene:getChildren()[3]
local f=io.open(device.writablePath..'start-font-test.txt','w')
f:write('Title: '..button:getTitleText()..'\nFont: '..button:getTitleFontName()..'\n')
f:close()
assert(button:getTitleText()=='Start')
assert(button:getTitleFontName()=='font/fangzheng.ttf','Start must retain the original launcher font')
assert(_G_OFFLINE_BRIDGE==nil,'Local game should not start before Start is pressed')


