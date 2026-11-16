local b=_G_OFFLINE_BRIDGE
local f=io.open(device.writablePath..'mob-diagnostic.txt','w')
f:write('hero '..b.state.x..','..b.state.y..' paused '..tostring(b.world.paused)..'\n')
for _,e in ipairs(b.world.enemies) do
 local a=lt.AgentManager:getWorldAgent():getAgent(e.objID)
 if a then local x,y=a:getPosition(); f:write(string.format('mob %d sim %.1f %.1f actor %.1f %.1f queue %d speed %.1f state %s\n',e.id,e.x,e.y,x,y,a:getCmdSystem():getCmdCount(),a:getMoveSpeed(),tostring(a:isInStateId(lt.Constant.MONSTER_STATE_MOVE)))) end
end
f:close()
