local found=false
for _,w in ipairs(display.getRunningScene():getLayerManager():getWndLayer():getViewOpenArray()) do
 if w._chooselist and w._chooselist:isVisible() then
  local popup=w._chooselist;assert(popup:getSize().width==220)
  assert(popup:getX()>=0 and popup:getX()+220<=w:getSize().width,'Potion popup outside window')
  for _,item in ipairs(popup:getChildren()) do
   assert(item:getSize().width==220,'Potion option background still too narrow')
   local title=item:getChild('title');assert(title:getFontSize()>=18)
   assert(title:getSize().width<=200)
   for _,child in ipairs(item:getChildren()) do
    if tolua.type(child)=='fgui.GLoader' then assert(child:getSize().width==220,'Potion background did not expand') end
   end
  end
  found=true
 end
end
assert(found,'Open the native potion selector first')
local f=io.open(device.writablePath..'readable-popup-pass.txt','w');f:write('PASS relocated potion popup and widened native option rows, font size 18\n');f:close()
