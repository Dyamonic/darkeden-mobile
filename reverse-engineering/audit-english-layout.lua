local scene=display.getRunningScene()
local f=io.open(device.writablePath..'english-layout-audit.json','w')
local rows={}
local function inspect(root,path)
 local function visit(o,p,depth)
  if not o or depth>24 then return end
  local kind=tolua.type(o)
  local row={path=p,kind=kind}
  if o.getText then row.text=o:getText() end
  if o.getSize then local s=o:getSize();row.width=s.width;row.height=s.height end
  if o.getPosition then local a,b=o:getPosition();if type(a)=='table' then row.x=a.x;row.y=a.y else row.x=a;row.y=b end end
  if o.isVisible then row.visible=o:isVisible() end
  if o.displayObject then local node=o:displayObject();if node then row.displayVisible=node:isVisible() end end
  if o.getPivot then local p=o:getPivot();row.pivotX=p.x;row.pivotY=p.y;row.anchored=o:isPivotAsAnchor() end
  if o.getRotation then row.rotation=o:getRotation() end
  if o.getTextFormat then local t=o:getTextFormat();row.font=t.face;row.fontSize=t.size end
  if o.getAutoSize then row.auto=o:getAutoSize() end
  if o.getTextSize then local t=o:getTextSize();row.textWidth=t.width;row.textHeight=t.height end
  rows[#rows+1]=row
  if o.getChildren then for i,c in ipairs(o:getChildren()) do visit(c,p..'/'..i,depth+1) end end
 end
 visit(root,path,0)
end
if scene.getLayerManager then
 local lm=scene:getLayerManager();local main=lm:getMainUILayer()
 inspect(main._view,'main')
 for _,name in ipairs({'btnShopping','btnRank','btnActivity','btnDailyTask','btnMonthCard','btnPrivilege','node_activity','btn_activitySwitch'}) do
  local o=main._view:getChild(name)
  if o then inspect(o,name) end
 end
 local controller=main._view:getController('showActivity')
 if controller then rows[#rows+1]={path='showActivity',selected=controller:getSelectedIndex()} end
 inspect(lm:getWndLayer(),'windows');inspect(lm:getTipsLayer(),'tips');inspect(lm:getEditLayer(),'edit')
 for _,window in ipairs(lm:getWndLayer():getViewOpenArray()) do inspect(window,'window:'..window:getParam().class) end
elseif scene._roleLayer then inspect(scene._roleLayer,'roles') end
f:write(json.encode(rows));f:close()
