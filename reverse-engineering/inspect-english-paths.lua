local f=cc.FileUtils:getInstance()
local o=io.open(f:getWritablePath()..'english-paths.txt','w')
for _,p in ipairs(f:getSearchPaths()) do o:write(p,'\n') end
o:write('MAIN ',f:fullPathForFilename('res/fairygui/Main_atlas0.png'),'\n')
local m=display.getRunningScene():getLayerManager():getMainUILayer()
local function walk(v,d)
 o:write(string.rep(' ',d),tolua.type(v),' ', tostring(v:getResourceURL()),'\n')
 if v.getNumChildren then for i=0,v:getNumChildren()-1 do walk(v:getChildAt(i),d+1) end end
end
walk(m._btnSwitch,0)
o:close()
