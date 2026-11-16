-- Original race homes and portal destinations; local populations use quest hints.
local Data=require("app.offline.WorldData")
local Locations={}
function Locations.start(state)
    local race=state.appearance and state.appearance.byRace or 1
    local home=assert(Data.homes[race],"Unknown race")
    state.map=home.map;state.x=home.m*48+24;state.y=-(home.n*24+12)
    state.spawnRevision=1
end
function Locations.correctStart(state)
    if state.spawnRevision then return false end
    local race=state.appearance and state.appearance.byRace or 1
    -- Earlier offline versions incorrectly placed every race on map 12.
    if race~=1 and state.map=="12" then Locations.start(state)
    else state.spawnRevision=1 end
    return true
end
function Locations.destination(code,target,m,n)
    local spec=Data.maps[tostring(code)]
    if not spec then return end
    local best,dist
    for _,p in ipairs(spec.portals) do
        if p.target==tostring(target) then
            local d=math.huge
            for _,v in ipairs(p.area) do d=math.min(d,(v[1]-m)^2+(v[2]-n)^2) end
            if not dist or d<dist then best,dist=p,d end
        end
    end
    if not best then return end
    local tm,tn=best.m,best.n
    if best.kind==2 then tm=m elseif best.kind==3 then tn=n end
    local dest=Data.maps[best.target]
    tm=math.max(0,math.min(dest.width-1,tm));tn=math.max(0,math.min(dest.height-1,tn))
    return best.target,tm,tn
end
function Locations.npcDestination(state,npc,talk,m,n)
    if state.hp<=0 then return nil,"You cannot travel while dead." end
    if tostring(npc.MapResId)~=tostring(state.map) then return nil,"This NPC is not on your map." end
    local race=state.appearance and state.appearance.byRace or 1
    if tonumber(npc.Contem)~=0 and tonumber(npc.Contem)~=race then return nil,"This NPC cannot transport your race." end
    local owned=false
    for id in tostring(talk.NPCId):gmatch("%d+") do if id==tostring(npc.NpcIndex) then owned=true end end
    if not owned then return nil,"This travel option does not belong to this NPC." end
    local distance=tonumber(npc.DialogueDistance) or 10
    if math.max(math.abs(m-npc.Xpot),math.abs(n-npc.Ypot))>distance then return nil,"Move closer to this NPC to travel." end
    local code,tm,tn=tostring(talk.NPCTalkGoto):match("^2|(%d+),(%d+),(%d+)$")
    local spec=code and Data.maps[code]
    tm,tn=tonumber(tm),tonumber(tn)
    if not spec or tm>=spec.width or tn>=spec.height then return nil,"This travel destination is unavailable offline." end
    return code,tm,tn
end
function Locations.population(code,open)
    local spec=Data.maps[tostring(code)]
    local result={}
    if not spec or spec.safe then return result end
    for _,h in ipairs(spec.hints) do
        for i=1,4 do
            local angle=i*2.39996
            local m=h.m+math.floor(math.cos(angle)*(3+i))
            local n=h.n+math.floor(math.sin(angle)*(3+i))
            local x,y=m*48+24,-(n*24+12)
            if m>=0 and n>=0 and m<spec.width and n<spec.height and open(x,y) then
                result[#result+1]={x=x,y=y,monster=h.monster,name=h.name,model=h.model,
                    level=h.level,mission=h.mission}
            end
        end
    end
    return result
end
return Locations
