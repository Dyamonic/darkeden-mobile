local f=io.open(device.writablePath..'layout-font.txt','w')
for _,w in ipairs(display.getRunningScene():getLayerManager():getWndLayer():getViewOpenArray()) do
 if w.getInfoAttrsData then
  local panel=w:getChild('infoCom'):getChild(lt.Constant.RaceToJobPanel[lt.GameModule:getHeroRace()])
  for key,data in pairs(w:getInfoAttrsData()) do
   local row=panel:getChild(key)
   if row then
    local o=row:getChild('name');local t=o:getTextFormat()
    f:write(key..' '..o:getText()..' formatType='..type(t)..'\n')
    if type(t)=='table' then f:write(json.encode(t)..'\n') end
    local n=o:displayObject();f:write('node='..tolua.type(n)..'\n')
    for _,method in ipairs({'getFontSize','getSystemFontSize','getBMFontSize'}) do if n[method] then local ok,v=pcall(n[method],n);f:write(method..' '..tostring(ok)..' '..tostring(v)..'\n') end end
   end
  end
 end
end
f:close()
