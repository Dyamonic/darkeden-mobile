local b=_G_OFFLINE_BRIDGE
local layer=display.getRunningScene():getLayerManager():getWndLayer()
layer:closeAllDlg()
local names={'UIWndRoleInfo','UIWndInventory','UIWndRoleEquip'}
local cached={}
for _,name in ipairs(names) do
 assert(layer._offlineWarmMs[name],'Common window was not prepared during loading')
 for _,view in ipairs(layer._viewArray) do if view:getParam().layerName==name then assert(not cached[name],'Duplicate cached window');cached[name]=view end end
 assert(cached[name] and not cached[name]:isShowing(),'Prepared window is showing')
end
local role=cached.UIWndRoleInfo
assert(not role._clsCom and not role._transferCom and not role._magicCom,'Stats eagerly created hidden skill tabs')
local methods={}
for _,name in ipairs(names) do
 local times={}
 for i=1,6 do
  local start=os.clock()
  lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_DLG_MAIN_VIEW,{class=name})
  times[i]=(os.clock()-start)*1000
  assert(cached[name]:isShowing(),'Cached window did not open')
  lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_DLG_MAIN_VIEW,{class=name,close=true})
  assert(not cached[name]:isShowing(),'Closing left cached GUI on screen')
 end
 methods[name]=times
end
for _,name in ipairs(names) do
 local count=0
 for _,view in ipairs(layer._viewArray) do if view:getParam().layerName==name then count=count+1;assert(view==cached[name]) end end
 assert(count==1,'GUI cache grew during repeated opening')
end
local oldHP=b.state.hp
local ok,err=pcall(function()
 lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_DLG_MAIN_VIEW,{class='UIWndRoleInfo'})
 b.state.hp=oldHP-1;b:syncHero()
 local hpFound=false
 for _,item in ipairs(role._attrItemListLeft) do
  if item:getChild('name'):getText()=='HP' then hpFound=true;assert(item:getChild('value'):getText():find(tostring(oldHP-1)..'/',1,true),'Cached HP is stale') end
 end
 assert(hpFound)
 role._selectIndex=lt.Constant.RoleInfoBtnType.magic;role:showCurPanel()
 assert(role._magicCom and role._magicCom:isVisible(),'Lazy magic tab did not open')
 role._selectIndex=lt.Constant.RoleInfoBtnType.role;role:showCurPanel()
 assert(not role._magicCom:isVisible(),'Magic tab stayed visible behind Stats')
end)
b.state.hp=oldHP;b:syncHero();layer:closeAllDlg()
assert(ok,err)
local f=io.open(device.writablePath..'gui-cache-pass.json','w');f:write(json.encode({pass=true,openMs=methods,warmupMs=layer._offlineWarmMs,checks='prepared windows; same instance; hidden on close; one cache per class; HP refresh; lazy magic tab; original HP restored'}));f:close()
