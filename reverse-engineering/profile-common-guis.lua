local lm=display.getRunningScene():getLayerManager();local layer=lm:getWndLayer();layer:closeAllDlg()
local results={warmupMs=layer._offlineWarmMs,windows={}}
for _,name in ipairs({'UIWndRoleInfo','UIWndInventory','UIWndRoleEquip'}) do
 local samples={}
 for i=1,5 do
  local start=os.clock();lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_DLG_MAIN_VIEW,{class=name});samples[i]=(os.clock()-start)*1000
  layer:closeAllDlg()
 end
 results.windows[name]=samples
end
local f=io.open(device.writablePath..'common-gui-profile.json','w');f:write(json.encode(results));f:close()
