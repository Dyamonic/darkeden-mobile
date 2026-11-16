-- Read-only comparison of authoritative mobs with the native green minimap areas.
local bridge=assert(_G_OFFLINE_BRIDGE);assert(bridge.remote and bridge.world)
local map=lt.AgentManager:getWorldAgent():getMapAgent()
local areas=lt.CacheManager:getSafeAreaArray(bridge.state.map,true)
local race=lt.Constant.SAFE_RACE[lt.GameModule:getHeroRace()]
local function inside(points,m,n)
    local hit=false
    for i,a in ipairs(points) do
        local b=points[i%#points+1]
        local cross=(b[1]-a[1])*(n-a[2])-(b[2]-a[2])*(m-a[1])
        if cross==0 and m>=math.min(a[1],b[1]) and m<=math.max(a[1],b[1]) and n>=math.min(a[2],b[2]) and n<=math.max(a[2],b[2]) then return true end
        if (a[2]>n)~=(b[2]>n) and m<(b[1]-a[1])*(n-a[2])/(b[2]-a[2])+a[1] then hit=not hit end
    end
    return hit
end
local count=0
for _,mob in ipairs(bridge.world.enemies) do if mob.hp>0 then
    local m,n=lt.MapUtil:calcMN(mob.x,mob.y)
    assert(not map:getWholeMapSafe() and not map:getSafeRect(m,n),'Server mob is inside native safe tiles')
    for _,area in ipairs(areas) do
        if area:getRace()==race or area:getRace()==4 then
            assert(not inside(area:getSafeArea(),m,n),'Server mob is inside a green minimap polygon')
        end
    end
    count=count+1
end end
local f=assert(io.open(device.writablePath..'sanctuary-spawns-pass.txt','w'))
f:write('PASS '..count..' nearby living server mobs are outside native safe tiles and green minimap polygons on map '..bridge.state.map)
f:close()
