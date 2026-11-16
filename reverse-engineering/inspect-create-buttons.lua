local r=display.getRunningScene()._roleLayer
local f=io.open(device.writablePath..'english-create-buttons.txt','w')
local function scan(o)
 if o.getText and (o:getText():find('Check') or o:getText():find('Random')) then
  local p=o:getParent();local s=o:getSize()
  f:write(tolua.type(o)..' text='..o:getText()..' x='..o:getX()..' width='..s.width..' parent='..tolua.type(p)..' pw='..p:getSize().width..' align='..tostring(o.setAlign)..'\n')
 end
 if o.getChildren then for _,c in ipairs(o:getChildren()) do scan(c) end end
end
scan(r);f:close()
