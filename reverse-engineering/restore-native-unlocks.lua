local main=display.getRunningScene():getLayerManager():getMainUILayer()
main:onLevelChange()
local f=io.open(device.writablePath..'native-unlocks.txt','w')
for _,name in ipairs({'btnShopping','btnRank','btnActivity','btnPrivilege'}) do
 local o=main._view:getChild(name)
 f:write(name..' visible='..tostring(o:isVisible())..'\n')
end
f:close()
