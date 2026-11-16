-- Earn a level in an isolated simulation while showing the real native effect.
-- Original character/world/save references are restored automatically.
local b=_G_OFFLINE_BRIDGE
local lm=display.getRunningScene():getLayerManager();lm:getWndLayer():closeAllDlg()
local agent=lt.AgentManager:getHeroAgent()
local old={state=b.state,world=b.world,save=b.save,saveElapsed=b.saveElapsed,effect=agent.showLevelupEffect}
local calls=0
local function restore()
 b.state,b.world,b.save,b.saveElapsed=old.state,old.world,old.save,old.saveElapsed
 agent.showLevelupEffect=old.effect
 b:syncHero();b:syncInventory()
end
local ok,err=pcall(function()
 local state=json.decode(json.encode(old.state))
 local world=require('app.offline.World').new(state,function() return true end,{})
 state.xp=world:xpGoal()-1
 world.enemies={{id=1,objID=99999987,x=state.x+12,y=state.y,hp=1,maxHP=1,cooldown=0,action=0,direction=0}}
 b.state,b.world=state,world
 b.save=function() return true end
 agent.showLevelupEffect=function(self,...)
  calls=calls+1;return old.effect(self,...)
 end
 assert(world:attack(),'Test attack did not execute')
 assert(state.level==old.state.level+1,'XP did not level up')
 b:update(0)
 assert(calls==1,'Earned level must play one native effect')
 b:syncHero();b:update(0);b:syncHero()
 assert(calls==1,'Ordinary updates replayed level-up effect')
 assert(agent._heroActor._levelUpSpine,'Original level-up Spine was not created')
 display.getRunningScene():runAction(cc.Sequence:create(cc.DelayTime:create(2.5),cc.CallFunc:create(function()
  local valid=calls==1
  restore()
  assert(valid,'Effect replayed after its event was consumed')
  assert(b.state==old.state and b.world==old.world,'Original state not restored')
  local f=assert(io.open(device.writablePath..'level-up-pass.txt','w'))
  f:write('PASS: actual XP level-up plays original race effect once; updates do not replay it; original character/world/save restored\n');f:close()
 end)))
end)
if not ok then restore();error(err) end
