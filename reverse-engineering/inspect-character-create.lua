local b=_G_OFFLINE_BRIDGE
local c=display.getRunningScene()._roleLayer._createRole
local f=io.open(device.writablePath..'create-diagnostic.txt','w')
for _,k in ipairs({'_raceType','_sexType','_selectHair','_selectSkin','_selectHead','_remainPoints'}) do f:write(k..' '..tostring(c[k])..'\n') end
f:write('head '..tostring(c:getHeadId())..' name '..c._nameInput:getText()..'\n')
local create=lt.RoleModule.createRoleReq
lt.RoleModule.createRoleReq=function(module,param)
 f:write(json.encode(param)..'\n'); f:flush()
 return create(module,param)
end
c:createRoleCheck()
lt.RoleModule.createRoleReq=create
f:close()
