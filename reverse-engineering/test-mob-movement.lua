local b=_G_OFFLINE_BRIDGE
assert(b.world,'Enter the game first')
local scheduler=require('cocos.framework.scheduler')
local ticks,moves,maxQueue,maxDrift=0,0,0,0
for _,e in ipairs(b.world.enemies) do e.cooldown=30 end
local positions={}
local timer
timer=scheduler.scheduleGlobal(function()
 local ok,err=xpcall(function()
  ticks=ticks+1
  for _,e in ipairs(b.world.enemies) do
   local a=lt.AgentManager:getWorldAgent():getAgent(e.objID)
   if a and e.hp>0 then
    local x,y=a:getPosition();local old=positions[e.id]
    if old then
     local d=math.sqrt((x-old.x)^2+(y-old.y)^2)
     assert(d<25,'Mob teleported between frames: '..d)
     if d>0.1 then moves=moves+1 end
    end
    positions[e.id]={x=x,y=y}
    local q=a:getCmdSystem():getCmdCount();maxQueue=math.max(maxQueue,q)
    assert(q<=1,'Move command backlog')
    maxDrift=math.max(maxDrift,math.sqrt((e.x-x)^2+(e.y-y)^2))
   end
  end
  if ticks>=80 then
   scheduler.unscheduleGlobal(timer)
   assert(moves>0,'No movement observed')
   assert(maxDrift<15,'Simulation diverged from visible actor')
   for _,e in ipairs(b.world.enemies) do e.cooldown=0 end
   local f=io.open(device.writablePath..'mob-movement-test.txt','w')
   f:write(string.format('PASS %d ticks, %d moving samples, max queue %d, max position drift %.2f\n',ticks,moves,maxQueue,maxDrift));f:close()
  end
 end,__G__TRACKBACK__)
 if not ok then scheduler.unscheduleGlobal(timer) end
end,0.1)
