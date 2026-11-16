local b=_G_OFFLINE_BRIDGE
local f=assert(io.open(device.writablePath..'npc-travel-before.json','r'));local old=json.decode(f:read('*a'));f:close()
assert(b.state.map=='61','NPC travel did not reach Perona Northeast')
local m,n=lt.AgentManager:getHeroAgent():getMN();assert(m==110 and n==208,'NPC travel did not use original destination tile')
assert(tostring(lt.AgentManager:getWorldAgent():getMapAgent():getMapMeta():getMapCode())=='61','Visible map and saved map differ')
for _,key in ipairs({'name','level','xp','hp','gold','potions','kills'}) do assert(b.state[key]==old[key],'Travel changed '..key) end
for key,value in pairs(old.appearance) do assert(b.state.appearance[key]==value,'Travel changed appearance') end
for _,w in ipairs(display.getRunningScene():getLayerManager():getWndLayer():getViewOpenArray()) do assert(w:getParam().class~='UIWndTalkNpc','Old NPC dialog stayed open') end
assert(not b.transferring)
local f=io.open(device.writablePath..'npc-travel-pass.txt','w');f:write('PASS native Foley option 302105 -> Perona Northeast map 61, tile 110,208; dialog closed; HP, XP, level, gold, inventory and appearance preserved\n');f:close()
