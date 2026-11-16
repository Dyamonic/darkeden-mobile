local main=display.getRunningScene():getLayerManager():getMainUILayer()
local f=io.open(device.writablePath..'english-title-positions.txt','w')
local function scan(o)
 if o.getText and o:getText()=='Character' then local p=o:getParent(); local s=o:getSize();f:write(tostring(o:getName())..' '..tolua.type(o)..' x='..o:getX()..' w='..s.width..' parent='..(p and p:getName() or '')..'\n') end
 if o.getChildren then for _,c in ipairs(o:getChildren()) do scan(c) end end
end
scan(main);f:close()
