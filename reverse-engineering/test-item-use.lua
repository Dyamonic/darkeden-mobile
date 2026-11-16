local ok,err=xpcall(function()
 local b=_G_OFFLINE_BRIDGE
 local before=b.state.potions
 local hp=b.state.hp
 local wasPaused=b.world.paused
 b.world.paused=true
 assert(before>0,"Potion test requires supplies")
 if hp>=b.world:maxHP() then hp=b.world:maxHP()-30;b.state.hp=hp end
 lt.ItemModule:sendUseItem(10001,1)
 assert(b.state.potions==before-1,"Original item request must consume one potion")
 assert(b.state.hp==math.min(b.world:maxHP(),hp+65),"Potion must restore health")
 assert(b.world.paused,"Using a potion must keep the inventory pause")
 b.world.paused=wasPaused
 local loaded=b.store:load()
 assert(loaded.potions==b.state.potions and loaded.hp==b.state.hp,"Item change must be saved")
 local f=io.open(device.writablePath.."offline-item-test.txt","w")
 f:write("PASS original ItemModule request while paused, heal, consumption, immediate save\n");f:close()
end,__G__TRACKBACK__)
