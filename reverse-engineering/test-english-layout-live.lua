-- Exercise real FairyGUI rows, including text assigned after construction.
local lm=display.getRunningScene():getLayerManager()
lm:getWndLayer():closeAllDlg()
lm:getMainUILayer():btnRoleClick()
local window
for _,w in ipairs(lm:getWndLayer():getViewOpenArray()) do
 if w.getInfoAttrsData then window=w end
end
assert(window)
local ui=require('app.offline.EnglishUI')
local function left(o)
 return o:getX()-(o:isPivotAsAnchor() and o:getSize().width*o:getPivot().x or 0)
end
local panels,rows=0,0
for _,key in ipairs(lt.Constant.RaceToJobPanel) do
 local panel=window:getChild('infoCom'):getChild(key)
 if panel then
  panels=panels+1
  for _,row in ipairs(panel:getChildren()) do
   if row.getChild then
    local name,value=row:getChild('name'),row:getChild('value')
    if name and value and name.getTextFormat and value.getTextFormat and left(value)>left(name)+12 and math.abs(name:getY()-value:getY())<=24 then
     local a,b=name:getText(),value:getText()
     name:setText('Experience');value:setText('9,999,999,999')
     ui.fitRow(row)
     assert(name:getText()=='EXP','Unfitted row '..key..' name='..json.encode(name:getSize())..' value='..json.encode(value:getSize())..' row='..json.encode(row:getSize())..' nameX='..left(name)..' valueX='..left(value)..' dy='..math.abs(name:getY()-value:getY()))
     assert(name:getAutoSize()==fgui.AutoSizeType.SHRINK and value:getAutoSize()==fgui.AutoSizeType.SHRINK)
     assert(left(name)+name:getSize().width<=left(value)-4,'Caption crosses into value')
     assert(left(value)+value:getSize().width<=row:getSize().width,'Value crosses row boundary')
     for i=1,5 do
      local bg=row:getChild('bg'..i)
      if bg then assert(left(name)+name:getSize().width<=left(bg)-4,'Caption crosses value frame');break end
     end
     local text=value:getTextSize()
     assert(text.width<=value:getSize().width+1,'Long value overflows its cell')
     local width=name:getSize().width
     ui.fitRow(row);assert(name:getSize().width==width,'Repeated layout changes width')
     name:setText(a);value:setText(b);ui.fitRow(row)
     rows=rows+1
    end
   end
  end
 end
end
assert(panels==3 and rows>12)
window:refreshRoleInfo()
local minimap=lm:getMainUILayer()._view:getChild('compMiniMap')
local title=minimap:getChild('mapName')
local zoneName=title:getText()
title:setText('An Extremely Long English Zone Name - Northwest Basement')
ui.fitHeader(title,28)
assert(left(title)>=0 and left(title)+title:getSize().width<=minimap:getSize().width-28,'Zone name overlaps minimap arrow')
assert(title:getAutoSize()==fgui.AutoSizeType.SHRINK)
title:setText(zoneName);ui.fitHeader(title,28)
local toggle=lt.FunctionToggleModule
local level,advance=toggle._curLevel,toggle._curAdvLvl
local ok,err=pcall(function()
 toggle._curAdvLvl=0
 for _,case in ipairs({{300300,10},{500000,15},{500600,15},{500300,15}}) do
  toggle._curLevel=case[2]-1;assert(not toggle:checkEnterVisible(case[1]))
  toggle._curLevel=case[2];assert(toggle:checkEnterVisible(case[1]))
 end
end)
toggle._curLevel=level;toggle._curAdvLvl=advance
lm:getMainUILayer():onLevelChange()
assert(ok,err)
local f=io.open(device.writablePath..'english-layout-pass.txt','w')
f:write(string.format('PASS %d race panels and %d real rows: late English captions, long values, frame clearance, repeated fitting, long zone header; native Shop/Events/Rankings/VIP unlock thresholds retained\n',panels,rows));f:close()
