__G__TRACKBACK__=function(e)
 local trace=debug.traceback(tostring(e),2)
 local f=io.open(device.writablePath.."offline-error.txt","w");if f then f:write(trace);f:close() end
 local h=io.open(device.writablePath.."offline-errors.log","a");if h then h:write(trace.."\n\n");h:close() end
 return trace
end
local ok,err=xpcall(function() _G_OFFLINE_BRIDGE:loadWorld() end,__G__TRACKBACK__)
