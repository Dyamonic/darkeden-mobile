local bridge=assert(_G_OFFLINE_BRIDGE);assert(bridge.state.gm,'Select a GM character')
local layer=display.getRunningScene():getLayerManager()
local main=layer:getMainUILayer();local button=assert(main._btnGMNew)
assert(button:isVisible() and button:getAlpha()==1,'GM button must be visible and opaque')
assert(button:getX()+button:getSize().width<main._btnBag:getX(),'GM button overlaps Bag')
local opened=false
for _,view in ipairs(layer:getWndLayer():getViewOpenArray()) do
    if view.__cname=='UIWndGMNew' then opened=true end
end
assert(opened,'Tap the GM button first to verify the original console opens')
local f=assert(io.open(device.writablePath..'gm-button-layout-pass.txt','w'))
f:write('PASS original opaque GM button is left of Bag; tapping it opens the original GM console')
f:close()
