local lm=display.getRunningScene():getLayerManager()
lm:getWndLayer():closeAllDlg()
lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_DLG_MAIN_VIEW,{class='UIWndHelp'})
for _,w in ipairs(lm:getWndLayer():getViewOpenArray()) do
 if w:getParam().class=='UIWndHelp' then
  for i,group in ipairs(w._helpMap) do if group[1]:getTypeName()=='UI Help' then w:selectMainIdx({param={mainIdx=i}});break end end
 end
end
