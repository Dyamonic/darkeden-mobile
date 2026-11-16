local b=_G_OFFLINE_BRIDGE
assert(b.world and b.state.name=='Wanderer' and b.store.data.selected==1)
assert(b.state.level==4 and b.state.xp==40 and b.state.gold==48)
assert(b.state.potions==7)
lt.SocketApi:reselRole()
