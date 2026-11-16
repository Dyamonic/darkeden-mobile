local lm=display.getRunningScene():getLayerManager();lm:getWndLayer():closeAllDlg()
lm:getMainUILayer():btnBagClick()
local f=io.open(device.writablePath..'gui-warmup.json','w');f:write(json.encode(lm:getWndLayer()._offlineWarmMs));f:close()
for _,w in ipairs(lm:getWndLayer():getViewOpenArray()) do if w:getParam().class=='UIWndInventory' then
 local b=w:getChild('btnBelt');local t=b:getTextField();local s=t:getSize()
 local x=t:getX()-(t:isPivotAsAnchor() and s.width*t:getPivot().x or 0)
 local y=t:getY()-(t:isPivotAsAnchor() and s.height*t:getPivot().y or 0)
 assert(math.abs(x+s.width/2-b:getSize().width/2)<1,'Bag caption not centered')
 assert(math.abs(y+s.height/2-b:getSize().height/2)<1,'Bag caption not vertically centered')
 assert(x+s.width<=b:getChild('lock'):getX(),'Bag caption overlaps lock')
 local f=io.open(device.writablePath..'bag-center-pass.txt','w');f:write('PASS bag caption centered horizontally and vertically; separate lock icon\n');f:close()
end end
