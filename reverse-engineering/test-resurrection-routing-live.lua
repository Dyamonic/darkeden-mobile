-- Exercise the original NPC action without changing the player's saved point.
local r=assert(_G_OFFLINE_BRIDGE.remote)
local previous=rawget(r,'queue');local captured
local ok,err=xpcall(function()
    r.queue=function(self,kind,args) captured={kind=kind,npc=args.npc} end
    lt.NpcModule:sendRecordLive(302)
    assert(captured and captured.kind=='bindResurrection' and captured.npc==302,
        'Original NPC resurrection request did not reach the adapter')
end,__G__TRACKBACK__)
r.queue=previous
assert(ok,err)
local f=assert(io.open(device.writablePath..'resurrection-routing-pass.txt','w'))
f:write('PASS original NPC resurrection request reaches bindResurrection; no player state changed')
f:close()
