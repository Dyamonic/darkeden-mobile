local b=_G_OFFLINE_BRIDGE
assert(b.world and b.state.name=='LocalTestB','Third character must enter gameplay')
assert(b.hero:getValue(lt.ServerClientEnum.PlayerValueDef.Attr_PlayerID)=='offline-3')
lt.SocketApi:reselRole()
