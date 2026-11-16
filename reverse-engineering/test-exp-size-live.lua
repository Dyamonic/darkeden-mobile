local lm=display.getRunningScene():getLayerManager()
lm:getWndLayer():closeAllDlg();lm:getMainUILayer():btnRoleClick()
local count=0
for _,w in ipairs(lm:getWndLayer():getViewOpenArray()) do if w.getInfoAttrsData then
 for i=1,3 do
  w:refreshRoleInfo()
  local p=w:getChild('infoCom'):getChild(lt.Constant.RaceToJobPanel[lt.GameModule:getHeroRace()])
  local exp,level=p:getChild('exp'):getChild('name'),p:getChild('level'):getChild('name')
  assert(exp:getText()=='EXP' and exp:getFontSize()==level:getFontSize(),'EXP font differs from Level')
  assert(exp:getAutoSize()==fgui.AutoSizeType.NONE,'EXP still shrinks')
  assert(exp:getTextSize().width<=exp:getSize().width+1,'EXP overflows its label cell')
  count=count+1
 end
end end
assert(count==3)
local f=assert(io.open(device.writablePath..'exp-size-pass.txt','w'));f:write('PASS: EXP matches Level font size, does not shrink or overflow, and persists through repeated role refreshes\n');f:close()
