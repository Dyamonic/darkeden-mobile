local b=_G_OFFLINE_BRIDGE
local scene=display.getRunningScene();local layer=scene and scene.getLayerManager and scene:getLayerManager():getWndLayer()
local warm=layer and layer._offlineWarmMs
local ready=b and b.world and not b.entering and warm and warm.UIWndRoleInfo and warm.UIWndInventory and warm.UIWndRoleEquip
local f=io.open(device.writablePath..'gui-ready.json','w');f:write(json.encode({ready=not not ready,entering=b and b.entering,warmupMs=warm or false}));f:close()
