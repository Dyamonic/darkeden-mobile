local b=_G_OFFLINE_BRIDGE
assert(not b.world,'Cleanup only from character selection')
local chars=b.store.data.characters
for i=#chars,1,-1 do
 if chars[i].name=='LocalTestA' or chars[i].name=='LocalTestB' then table.remove(chars,i) end
end
assert(#chars==1 and chars[1].name=='Wanderer')
b.store.data.selected=1;b.state=chars[1]
assert(b:save());assert(b:save()) -- Keep the recovery copy free of temporary test entries too.
lt.RoleModule:refreshData(b:roleList())
display.runScene(lt.RoleScene.new())
local f=io.open(device.writablePath..'multi-cleanup-pass.txt','w')
f:write('PASS temporary test characters removed; original progress retained; two empty slots available\n');f:close()
