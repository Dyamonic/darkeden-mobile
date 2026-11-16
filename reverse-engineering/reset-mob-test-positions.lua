local b=_G_OFFLINE_BRIDGE
if b.state.hp<=0 then lt.GameModule:sendRelive() end
for _,e in ipairs(b.world.enemies) do
 local a=lt.AgentManager:getWorldAgent():getAgent(e.objID)
 if a and e.hp>0 then
  a:getCmdSystem()._cmdQueue=lt.Queue.new()
  a:changeState(lt.MonsterStateIdle.new(a));a:setPosition(e.homeX,e.homeY)
  e.x,e.y=e.homeX,e.homeY;e.targetM,e.targetN=nil,nil
 end
end
