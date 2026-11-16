local f=io.open(device.writablePath..'english-pivot.txt','w')
local function scan(o)
 if tolua.type(o)=='fgui.GBasicTextField' and o:getText():find('Check') then
  f:write('x='..o:getX()..' y='..o:getY()..' pivotfn='..tostring(o.getPivot)..' anchorfn='..tostring(o.isPivotAsAnchor)..'\n')
  if o.getPivot then local p=o:getPivot();f:write('pivot='..p.x..','..p.y..'\n') end
  if o.isPivotAsAnchor then f:write('anchor='..tostring(o:isPivotAsAnchor())..'\n') end
 end
 if o.getChildren then for _,c in ipairs(o:getChildren()) do scan(c) end end
end
scan(display.getRunningScene()._roleLayer);f:close()
