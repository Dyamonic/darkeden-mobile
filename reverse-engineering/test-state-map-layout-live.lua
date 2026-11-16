local function left(o) return o:getX()-(o:isPivotAsAnchor() and o:getSize().width*o:getPivot().x or 0) end
local function top(o) return o:getY()-(o:isPivotAsAnchor() and o:getSize().height*o:getPivot().y or 0) end
local window
for _,w in ipairs(display.getRunningScene():getLayerManager():getWndLayer():getViewOpenArray()) do if w:getParam().class=='UIWndStateMap' then window=w end end
assert(window,'Open the original region map first')
for i=74,79 do
 local title=window:getChild('n'..i)
 assert(left(title)>=275 and left(title)+title:getSize().width<=420,'Map legend runs into lower tiles')
 assert(title:getFontSize()>=18)
end
local count=0
for _,tile in ipairs(window._stateMap:getChildren()) do
 if tile.getChild then
  local title=tile:getChild('name')
  if title then
   local size=tile:getSize();local t=title:getSize()
   assert(left(title)>=4 and left(title)+t.width<=size.width-4,'Zone label outside horizontal tile padding')
   assert(top(title)>=20 and top(title)+t.height<=size.height-2,'Zone label clips outside tile')
   assert(title:getFontSize()>=12,'Zone label became too small')
   assert(not title:getText():match('Northwest$') and not title:getText():match('Northeast$'),'Long direction was not split')
   count=count+1
  end
 end
end
assert(count>=20)
local ui=require('app.offline.EnglishUI')
local module=lt.MapModule
local key=lt.Constant.StateSelect.MapName
local originalNames=module:getStateSelectTable(key)
local originalUnderground=window._isUnderground
local ok,err=pcall(function()
 module:setStateSelectTable(key,false);window:refreshStateMapInfo()
 for _,tile in ipairs(window._stateMap:getChildren()) do
  if tile.getChild and tile:getChild('name') then assert(tile:getChild('name'):getText()=='','Hidden map names came back') end
 end
 module:setStateSelectTable(key,true)
 for _,underground in ipairs({false,true,false}) do
  window._isUnderground=underground;window:refreshStateMapInfo()
  for _,tile in ipairs(window._stateMap:getChildren()) do
   if tile.getChild and tile:getChild('name') then
    local title=tile:getChild('name')
    assert(left(title)>=4 and left(title)+title:getSize().width<=tile:getSize().width-4)
    assert(top(title)+title:getSize().height<=tile:getSize().height-2)
    local x,y=title:getX(),title:getY();ui.fitStateMapTile(tile)
    assert(title:getX()==x and title:getY()==y,'Repeated fitting shifted tile title')
   end
  end
 end
end)
module:setStateSelectTable(key,originalNames);window._isUnderground=originalUnderground;window:refreshStateMapInfo()
assert(ok,err)
local f=io.open(device.writablePath..'state-map-layout-pass.txt','w');f:write('PASS '..count..' original map tiles: padded two-line zone labels, readable small tiles, separated legend/buttons; name filter and surface/underground refreshes retain padding\n');f:close()
