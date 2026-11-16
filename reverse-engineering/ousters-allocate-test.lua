local r=display.getRunningScene()._roleLayer
local c=r._createRole
c._nameInput:setText('AuditOuster')
c:btnAddPointClick()
for _,v in ipairs(r._viewOpenArray) do
 if v.addFunc then
  v._curAddIndex=1
  for i=1,15 do v:addFunc() end
  assert(v:getResiduePoint()==0)
  v:onBtnClick()
  break
 end
end
assert(c._remainPoints==0)
r:btnNextClick()
