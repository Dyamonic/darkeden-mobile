local b=_G_OFFLINE_BRIDGE
assert(b and b.state.hp>0)
display.getRunningScene():getLayerManager():getWndLayer():closeAllDlg()
b.state.hp=0;b:syncHero();b:save()
assert(not b.hero:isAlive())
