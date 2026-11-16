local ok,err=xpcall(function()
 local main=display.getRunningScene():getLayerManager():getMainUILayer()
 local f=io.open(device.writablePath.."offline-controls.txt","w")
 for _,name in ipairs({"_btnBag","_btnEquip","_btnRole"}) do
  local btn=main[name]
  local p=btn:localToGlobal(cc.p(btn:getWidth()/2,btn:getHeight()/2))
  f:write(name.." "..math.floor(p.x*1080/640)..","..math.floor(p.y*1080/640).."\n")
 end
 f:close()
end,__G__TRACKBACK__)
