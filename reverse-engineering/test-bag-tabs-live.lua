local lm=display.getRunningScene():getLayerManager()
lm:getWndLayer():closeAllDlg();lm:getMainUILayer():btnBagClick()
local count=0
for _,w in ipairs(lm:getWndLayer():getViewOpenArray()) do if w:getParam().class=='UIWndInventory' then
 for i=1,3 do
  local b=w:getChild('btnFiter'..i);local t=b:getTextField();local art=b:getChild('n0');local s=art:getSize()
  assert(t:isPivotAsAnchor() and t:getPivot().x==0.5 and t:getPivot().y==0.5)
  assert(t:getRotation()==90)
  assert(math.abs(t:getX()-art:getX()-s.width/2)<0.1,'Tab caption off center horizontally')
  assert(math.abs(t:getY()-art:getY()-s.height/2)<0.1,'Tab caption off center vertically')
  assert(t:getSize().height<=s.width-8 and t:getSize().width<=s.height-20,'Caption outside tab padding')
  local x,y=t:getX(),t:getY();require('app.offline.EnglishUI').fit(t)
  assert(x==t:getX() and y==t:getY(),'Repeated fitting shifted tab caption')
  count=count+1
 end
end end
assert(count==3,'Inventory not open')
local f=assert(io.open(device.writablePath..'bag-tabs-pass.txt','w'))
f:write('PASS: All, Items and Gear centered inside visible tab artwork with padding; repeat fitting stable\n');f:close()
