local ok,err=xpcall(function()
    local scene=display.getRunningScene()
    local r=scene._roleLayer
    local f=io.open(device.writablePath.."offline-inspect.txt","w")
    f:write("class "..tostring(scene.__cname).." role "..tostring(r).."\n")
    if r then
        f:write("select "..tostring(lt.RoleModule:getSelect()).." roleCount "..tostring(lt.RoleModule:getRoleCount()).."\n")
        f:write("button "..tostring(r._btnNext:isTouchable()).." open "..tostring(r._openType:getSelectedIndex()).."\n")
        f:write("name "..tostring(r:getRoleNameCur()).."\n")
    end
    f:close()
    if r then r:btnNextClick() end
end,__G__TRACKBACK__)
