local b=_G_OFFLINE_BRIDGE
local c=display.getRunningScene():getLayerManager():getMainUILayer()._comRevive
assert(b.state.hp==0 and c:isVisible(),'Native death screen must be visible')
local function edge(o) return o:getX()+o:getSize().width end
local title,timer,state,list,button=c:getChild('label_title'),c:getChild('label_last'),c:getChild('label_state'),c:getChild('list_revive'),c:getChild('btn_revive')
assert(title:getY()+title:getSize().height<=timer:getY(),'Death title overlaps timer')
assert(list:getY()+list:getSize().height<=state:getY(),'Revival methods overlap cost')
assert(state:getY()+state:getSize().height<=button:getY(),'Cost overlaps revive button')
local oldTime=c._remainTs
for _,seconds in ipairs({60,10,9}) do c._remainTs=seconds;c:refreshTime();assert(math.abs(timer:getX()+timer:getSize().width/2)<=2,'Countdown lost centering') end
c._remainTs=oldTime;c:refreshTime()
local n=0
for _,o in ipairs(list:getChildren()) do
 local t=o:getChild('title');assert(t:getFontSize()>=16);assert(t:getSize().width<=o:getSize().width)
 assert(t:getY()+t:getSize().height<=o:getSize().height,'Revival label outside tile')
 n=n+1
end
local f=io.open(device.writablePath..'readable-death-pass.txt','w');f:write('PASS native zero-HP screen: title, timer, '..n..' revival choices, cost and action occupy separate regions\n');f:close()
