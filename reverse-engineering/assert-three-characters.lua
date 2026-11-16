local b=_G_OFFLINE_BRIDGE
assert(#b.store.data.characters==3)
assert(b.store.data.characters[2].appearance.byRace==2)
assert(b.store.data.characters[3].appearance.byRace==1)
assert(b.store.data.characters[3].level==1 and b.store.data.characters[3].xp==0)
assert(b.store.data.characters[1].level==4 and b.store.data.characters[1].xp==40 and b.store.data.characters[1].gold==48)
local f=io.open(device.writablePath..'multi-character-pass.txt','w')
f:write('PASS original UI creation: Vampire slot 2, Slayer slot 3, original level-4 progress preserved\n');f:close()
