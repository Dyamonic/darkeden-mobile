local b=_G_OFFLINE_BRIDGE
assert(b.state.name=='Wanderer' and b.state.map=='12')
if _G_SPAWN_TEST_POSITION then lt.AgentManager:getHeroAgent():setPosition(unpack(_G_SPAWN_TEST_POSITION)) end
b:save()
local characters=b.store.data.characters
assert(characters[1].name=='Wanderer' and characters[2].name=='ElAidela')
assert(characters[1].gold==104 and characters[1].xp==180 and characters[1].kills==27 and characters[1].potions==10)
assert(characters[2].gold==32 and characters[2].xp==20 and characters[2].kills==4 and characters[2].potions==3)
assert(characters[3] and characters[3].name=='AuditOuster')
table.remove(characters,3)
-- Return the existing Vampire to the corrected home position used before the portal test.
characters[2].x=62*48+24;characters[2].y=-(64*24+12)
b.store.data.selected=1
assert(b.store:save(b.state));assert(b.store:save(b.state))
local f=io.open(device.writablePath..'spawn-cleanup.txt','w')
f:write('PASS existing character progress preserved, corrected Vampire home retained, temporary Ousters removed from roster and recovery snapshot\n');f:close()
