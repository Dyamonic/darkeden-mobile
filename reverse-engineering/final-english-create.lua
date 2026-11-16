local b=_G_OFFLINE_BRIDGE
assert(b and b.state and #b.store.data.characters>=1)
assert(GReadText.SELECT_ROLE_1=='Name')
assert(GReadText.SELECT_ROLE_8=='Blade Level')
display.getRunningScene()._roleLayer:btnCreateClick()
