local b=_G_OFFLINE_BRIDGE
assert(b.state.map=='1003' and b.state.appearance.byRace==2,'Foley test needs the existing Vampire in its village')
local f=io.open(device.writablePath..'npc-travel-before.json','w');f:write(json.encode(b.state));f:close()
local lm=display.getRunningScene():getLayerManager();lm:getWndLayer():closeAllDlg()
lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_DLG_MAIN_VIEW,{class='UIWndTalkNpc',npcId=302})
for _,w in ipairs(lm:getWndLayer():getViewOpenArray()) do if w:getParam().class=='UIWndTalkNpc' then
 for i,answer in ipairs(w._answerTalks) do if tonumber(answer.talkId)==302105 then
  assert(answer.content=='I want to go to Perona.')
  local item=w._npcTalkList:getChildAt(i-1);local button=item:getChild('btn');local s=button:getSize()
  local p=button:localToGlobal(cc.p(math.min(s.width/2,180),s.height/2))
  local f=io.open(device.writablePath..'npc-travel-click.json','w');f:write(json.encode({x=p.x*2400/display.width,y=p.y*1080/display.height}));f:close()
 end end
end end
