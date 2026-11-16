local lm=display.getRunningScene():getLayerManager()
lm:getWndLayer():closeAllDlg()
lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_DLG_MAIN_VIEW,{class='UIWndMail'})
