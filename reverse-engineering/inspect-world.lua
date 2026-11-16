local ok,err=xpcall(function()
 local b=_G_OFFLINE_BRIDGE
 local f=io.open(device.writablePath.."offline-inspect.txt","w")
 local count=0
 for k,v in pairs(lt.CacheManager:getRoleModel()) do
  count=count+1
  if count<8 then f:write("model key "..tostring(k).."\n") end
 end
 f:write("model count "..count.." target "..tostring(lt.CacheManager:getRoleModelMeta("model_1_1_0_0")).."\n")
 for row in lt.DbManager:getDb():nrows("SELECT * FROM RoleModel LIMIT 1") do
  for k,v in pairs(row) do f:write("row "..tostring(k).."="..tostring(v).."\n") end
 end
 local hero=lt.AgentManager:getHeroAgent()
 f:write("world "..tostring(b.world).." hero "..tostring(hero).."\n")
 if hero then
  local a=hero:getActor()
  f:write("hero pos "..tostring(hero:getPosition()).." actor "..tostring(a).."\n")
  for k,v in pairs(tolua.getpeer(a) or {}) do
   if k:find("action") or k:find("sprite") then f:write(k.."="..tostring(v).."\n") end
  end
  if a._actionInfo then
   f:write("count "..tostring(a._actionInfo:getSpriteFrameCount()).." frames "..tostring(a._actionInfo:getFrameCount()).."\n")
   for k,v in pairs(a._actionInfo) do f:write("act "..k.."="..tostring(v).."\n") end
  end
  f:write("visible "..tostring(a:isVisible()).." spr "..tostring(a._spriteHero:isVisible()).."\n")
 end
 f:write("world enemies "..tostring(b.world and #b.world.enemies).." timer "..tostring(b.timer).."\n")
 if b.world then
  for _,e in ipairs(b.world.enemies) do f:write("enemy "..e.id.." object "..tostring(e.objID).."\n") end
 end
 f:close()
end,__G__TRACKBACK__)
