local b=_G_OFFLINE_BRIDGE
local f=io.open(device.writablePath..'mob-diagnostic.txt','w')
f:write('bridge '..tostring(b)..' world '..tostring(b and b.world)..' scene '..tostring(display.getRunningScene())..'\n'); f:close()
