-- Deterministic local authority. No socket, account, or publisher dependencies.
local World = {}
World.__index = World

function World.new(save, walkable, population)
    local self = setmetatable({}, World)
    self.state = save or {version=1, name="Wanderer", map="12", x=5632, y=-4656,
        level=1, xp=0, hp=120, gold=0, potions=3, kills=0, elapsed=0}
    self.walkable = walkable or function() return true end
    self.enemies = {}
    self.time, self.attackReady = 0, 0
    self.events = {}
    self:spawn(population)
    return self
end

function World:maxHP() return 100 + self.state.level * 20 end
function World:xpGoal() return self.state.level * 60 end
function World:emit(kind, data)
    data = data or {}; data.kind = kind
    self.events[#self.events+1] = data
end
function World:spawn(population)
    local s = self.state
    if population then
        for i,p in ipairs(population) do
            self.enemies[i]={id=i,x=p.x,y=p.y,homeX=p.x,homeY=p.y,
                hp=40,maxHP=40,cooldown=0,action=0,direction=0,model=p.model,
                monster=p.monster,name=p.name,level=p.level,mission=p.mission}
        end
        return
    end
    for i=1,7 do
        local a = i * 2.39996
        local x, y = s.x + math.cos(a)*(150+i*35), s.y + math.sin(a)*(95+i*18)
        if self.walkable(x,y) then
            self.enemies[#self.enemies+1] = {id=i, x=x, y=y, homeX=x, homeY=y,
                hp=40, maxHP=40, cooldown=0, action=0, direction=0, model=6}
        end
    end
end
function World:move(dx,dy,dt)
    local s = self.state
    local len = math.sqrt(dx*dx + dy*dy)
    if len == 0 or self.paused or s.hp<=0 then return end
    local speed = 160
    local x, y = s.x + dx/len*speed*dt, s.y + dy/len*speed*dt
    if self.walkable(x,y) then s.x,s.y=x,y
    elseif self.walkable(x,s.y) then s.x=x
    elseif self.walkable(s.x,y) then s.y=y end
end
function World:attack()
    if self.paused or self.state.hp<=0 or self.time < self.attackReady then return false end
    self.attackReady = self.time + 0.5
    local s, nearest, distance = self.state, nil, 150*150
    if self.safe and self.safe(s.x,s.y) then return false end
    for _, e in ipairs(self.enemies) do
        local d=(e.x-s.x)^2+(e.y-s.y)^2
        if e.hp>0 and d<distance then nearest,distance=e,d end
    end
    self:emit("attack", {target=nearest})
    if nearest then
        local damage=16+s.level*4
        nearest.hp=math.max(0,nearest.hp-damage)
        self:emit("damage", {enemy=nearest, amount=damage})
        if nearest.hp==0 then
            nearest.deadUntil=self.time+12
            s.kills=s.kills+1; s.xp=s.xp+20; s.gold=s.gold+8
            if s.kills%3==0 then s.potions=s.potions+1 end
            self:emit("reward", {xp=20,gold=8})
            while s.xp>=self:xpGoal() do
                s.xp=s.xp-self:xpGoal(); s.level=s.level+1; s.hp=self:maxHP()
                self:emit("level", {level=s.level})
            end
        end
    end
    return true
end
function World:potion()
    local s=self.state
    if self.paused or s.hp<=0 or s.potions<=0 or s.hp>=self:maxHP() then return false end
    s.potions=s.potions-1; s.hp=math.min(self:maxHP(),s.hp+65)
    self:emit("potion")
    return true
end
function World:update(dt)
    if self.paused then return end
    dt=math.min(dt,0.1)
    self.time=self.time+dt
    local s=self.state
    s.elapsed=s.elapsed+dt
    if s.hp<=0 then return end
    for _, e in ipairs(self.enemies) do
        e.action=0
        if e.hp<=0 then
            if self.time>e.deadUntil then
                e.hp=e.maxHP; e.x=e.homeX; e.y=e.homeY
            end
        else
            e.cooldown=math.max(0,e.cooldown-dt)
            local dx,dy=s.x-e.x,s.y-e.y
            local dist=math.sqrt(dx*dx+dy*dy)
            local moving=self.isMoving and self.isMoving(e)
            local reachable=not self.canHit or self.canHit(e,s)
            local safe=self.safe and self.safe(s.x,s.y)
            if not safe and dist<=55 and e.cooldown==0 and not moving and reachable then
                s.hp=math.max(0,s.hp-7);e.cooldown=1.4;e.action=2
                self:emit("hurt",{amount=7,enemy=e})
                if s.hp==0 then self:emit("death",{enemy=e});break end
            elseif self.navigate then
                if not safe and dist<330 then self.navigate(e,s.x,s.y,true)
                else self.navigate(e,e.homeX,e.homeY,false) end
            elseif not safe and dist<330 and dist>42 then
                local x,y=e.x+dx/dist*55*dt,e.y+dy/dist*55*dt
                if self.walkable(x,y) then e.x,e.y=x,y;e.action=1 end
            end
        end
    end
end
function World:revive()
    if self.state.hp>0 then return false end
    self.state.hp=self:maxHP();self.attackReady=self.time+0.5
    for _,e in ipairs(self.enemies) do e.cooldown=3 end
    self:emit("revive")
    return true
end
return World
