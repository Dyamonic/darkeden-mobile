local b=_G_OFFLINE_BRIDGE
assert(#b.store.data.characters==2,'Second character must be saved')
assert(b.state.name=='LocalTestA' and b.store.data.selected==2)
assert(b.store.data.characters[1].name=='Wanderer' and b.store.data.characters[1].level==4)
if b.world then lt.SocketApi:reselRole() end
