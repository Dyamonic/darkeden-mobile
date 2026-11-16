local scene=display.getRunningScene()
local f=io.open(device.writablePath..'english-visible-text.txt','w')
local bad,count=0,0
local seen={}
local function visit(o,depth)
 if not o or depth>30 or seen[o] then return end
 seen[o]=true
 if o.getText then
  local value=o:getText()
  if value and #value>0 then
   count=count+1
   if value:find('[\228-\233][\128-\191][\128-\191]') then bad=bad+1;f:write('CHINESE '..value..'\n') end
  end
 end
 if o.getChildren then for _,c in ipairs(o:getChildren()) do visit(c,depth+1) end end
end
if scene._roleLayer then visit(scene._roleLayer,0)
elseif scene.getLayerManager then
 local lm=scene:getLayerManager()
 visit(lm:getMainUILayer(),0)
 visit(lm:getWndLayer(),0);visit(lm:getTipsLayer(),0);visit(lm:getEditLayer(),0)
end
f:write(string.format('Text fields: %d; remaining Chinese fields: %d\n',count,bad));f:close()
assert(bad==0,'Chinese text remains in loaded UI')

