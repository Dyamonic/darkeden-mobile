local s=display.getRunningScene()
local main=s:getLayerManager():getMainUILayer()
local f=io.open(device.writablePath..'english-types.txt','w')
local count=0
local function scan(o,depth)
 if not o or count>80 or depth>10 then return end
 local t=tolua.type(o)
 if o.getText then
  local text=o:getText()
  if text and #text>0 then local z=o:getSize(); f:write(t..' '..z.width..'x'..z.height..' '..text:gsub('\n','|')..'\n');count=count+1 end
 end
 if o.getChildren then for _,child in ipairs(o:getChildren()) do scan(child,depth+1) end end
end
scan(main,0);f:close()
