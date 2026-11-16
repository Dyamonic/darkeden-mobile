local ok,err=xpcall(function()
 local scene=display.getRunningScene()
 local r=scene._roleLayer
 local f=io.open(device.writablePath.."offline-input.txt","w")
 f:write("display "..display.width.." "..display.height.."\n")
 local target=scene._groot:getTouchTarget()
 local tp=scene._groot:getTouchPosition(0)
 f:write("touch "..tp.x..","..tp.y.." target "..tostring(target and target.name).."\n")
 if r then
  f:write("open "..r._openType:getSelectedIndex().." role "..tostring(r:getRoleNameCur()).."\n")
  for _,k in ipairs({"_btnNext","_btnPre","_btnCreate"}) do
   local btn=r[k]
   local p=btn:localToGlobal(cc.p(btn:getWidth()/2,btn:getHeight()/2))
   f:write(k.." global "..p.x..","..p.y.." size "..btn:getWidth()..","..btn:getHeight().."\n")
  end
 end
 f:close()
 if r then r:onEnter() end
end,__G__TRACKBACK__)
