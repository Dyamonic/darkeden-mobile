local b=_G_OFFLINE_BRIDGE
local result={bridge=b~=nil}
if b then
 result.world=b.world~=nil;result.entering=b.entering;result.hero=b.hero~=nil
 result.name=b.state and b.state.name;result.map=b.state and b.state.map
 result.remote=b.remote~=nil;result.busy=b.remote and b.remote.busy;result.failed=b.remote and b.remote.failed
 result.generation=b.remote and b.remote.generation
 result.hp=b.state and b.state.hp;result.level=b.state and b.state.level
 result.seq=b.remote and b.remote.nextSeq;result.event=b.remote and b.remote.after
 result.points=b.state and b.state.points;result.stats=b.state and b.state.stats
 result.mobs=b.world and #b.world.enemies
end
local f=assert(io.open(device.writablePath..'private-server-status.json','w'));f:write(json.encode(result));f:close()
