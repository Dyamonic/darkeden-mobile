local ui=require('app.offline.EnglishUI')
local function left(o) return o:getX()-(o:isPivotAsAnchor() and o:getSize().width*o:getPivot().x or 0) end
local function check(row,key)
 local caption,value=row:getChild('text1'),row:getChild('text_percent')
 if value then assert(left(caption)+caption:getSize().width+8<=left(value),'Settings caption overlaps value in row '..key) end
 assert(caption:getFontSize()>=18,'Settings text too small in row '..key)
 local s=caption:getSize();assert(left(caption)>=0 and left(caption)+s.width<=row:getSize().width,'Caption outside settings row '..key)
 if row:getChild('comboBox') then
  local combo,buy,input=row:getChild('comboBox'),row:getChild('text3'),row:getChild('bgInput')
  assert(combo:getY()>caption:getY()+caption:getSize().height,'Potion selector overlaps title')
  assert(left(combo)+combo:getSize().width+8<=left(buy),'Selector overlaps refill label')
  assert(left(buy)+buy:getSize().width+8<=left(input),'Refill label overlaps input')
 end
end
local n=0
for _,w in ipairs(display.getRunningScene():getLayerManager():getWndLayer():getViewOpenArray()) do
 if w._panellist then for k,row in pairs(w._panellist) do check(row,k);n=n+1 end end
end
assert(n>=20,'Open the native settings window first')
local fixtureCount=0
for _,group in ipairs({1,2,3}) do
 for _,meta in ipairs(lt.CacheManager:getSettingMeta(group)) do
  local row=fgui.UIPackage:createObject('Setting','setting_game'..meta:getSettingClass())
  ui.fitSetting(row,meta);check(row,meta:getIdx())
  local x=row:getChild('text1'):getX()
  ui.fitSetting(row,meta);assert(row:getChild('text1'):getX()==x,'Repeated fitting moved label')
  fixtureCount=fixtureCount+1
 end
end
local f=io.open(device.writablePath..'readable-layout-pass.txt','w')
f:write('PASS '..n..' real settings rows and '..fixtureCount..' native fixtures across all race settings: separate label/value/input/dropdown regions, readable font sizes, repeated fitting\n');f:close()

