-- CPU timings; run after check-gui-ready confirms map loading has completed.
local rows,undo,stack={},{},{}
local function wrap(t,key,name)
 local old=t[key];if type(old)~='function' then return end
 t[key]=function(...)
  local frame={start=os.clock(),children=0};stack[#stack+1]=frame
  local result=old(...)
  local duration=(os.clock()-frame.start)*1000
  stack[#stack]=nil;if #stack>0 then stack[#stack].children=stack[#stack].children+duration end
  local r=rows[name] or {calls=0,total=0,self=0};rows[name]=r;r.calls=r.calls+1;r.total=r.total+duration;r.self=r.self+duration-frame.children
  return result
 end
 undo[#undo+1]=function() t[key]=old end
end
local loadStart=os.clock();local role=lt.UIWndRoleInfo;rows.classLoad={calls=1,total=(os.clock()-loadStart)*1000,self=(os.clock()-loadStart)*1000}
for _,name in ipairs({'onInit','onShown','initUI','showCurPanel','refreshHeroInfo','refreshRoleInfo','refreshAttrLeft','refreshAttrRight','fixReview'}) do wrap(role,name,'Stats.'..name) end
local ui=require('app.offline.EnglishUI');wrap(ui,'fit','English.fit');wrap(ui,'fitRow','English.row')
wrap(fgui.UIPackage,'createObject','FGUI.create');wrap(fgui.UIPackage,'createObjectFromURL','FGUI.url');wrap(cc.Label,'createWithTTF','Font.measure')
local lm=display.getRunningScene():getLayerManager();lm:getWndLayer():closeAllDlg()
local timings={}
for i=1,3 do
 local start=os.clock();lm:getMainUILayer():btnRoleClick();timings[i]=(os.clock()-start)*1000
 lm:getWndLayer():closeAllDlg()
end
for i=#undo,1,-1 do undo[i]() end
local f=io.open(device.writablePath..'gui-profile.json','w');f:write(json.encode({openMs=timings,methods=rows}));f:close()
