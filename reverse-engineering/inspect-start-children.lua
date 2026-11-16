local scene=display.getRunningScene()
local f=io.open(device.writablePath..'start-children.txt','w')
for i,v in ipairs(scene:getChildren()) do f:write(i..' '..tolua.type(v)..' z='..v:getLocalZOrder()..'\n') end
f:close()
