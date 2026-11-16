local Scene = {}
local World = require("app.offline.World")
local Store = require("app.offline.Store")

local function label(parent,text,size,x,y,color)
    local node=cc.Label:createWithSystemFont(text,"Arial",size)
    node:setPosition(x,y)
    node:setTextColor(color or cc.c4b(238,228,208,255))
    parent:addChild(node,20)
    return node
end
local function panel(parent,x,y,w,h,color)
    local node=cc.DrawNode:create()
    node:drawSolidRect(cc.p(x,y),cc.p(x+w,y+h),color or cc.c4f(0.035,0.045,0.05,0.88))
    node:drawRect(cc.p(x,y),cc.p(x+w,y+h),cc.c4f(0.55,0.40,0.20,0.9))
    parent:addChild(node,10)
    return node
end
local function distance(x,y,a,b) return math.sqrt((x-a)^2+(y-b)^2) end

function Scene.create()
    local self={scene=cc.Scene:create(),buttons={},actors={},elapsed=0,saveElapsed=0,keys={}}
    setmetatable(self,{__index=Scene})
    self.store=Store.new(device.writablePath.."offline-save-v1.json",json)
    local saved,status=self.store:load()
    self.loadStatus=status
    self.saved=saved
    self:menu()
    local touch=cc.EventListenerTouchOneByOne:create()
    touch:setSwallowTouches(false)
    touch:registerScriptHandler(function(t) return self:touchBegin(t:getLocation()) end,cc.Handler.EVENT_TOUCH_BEGAN)
    touch:registerScriptHandler(function(t) self:touchMove(t:getLocation()) end,cc.Handler.EVENT_TOUCH_MOVED)
    local function finish() self.stick=nil end
    touch:registerScriptHandler(finish,cc.Handler.EVENT_TOUCH_ENDED)
    touch:registerScriptHandler(finish,cc.Handler.EVENT_TOUCH_CANCELLED)
    local dispatcher=cc.Director:getInstance():getEventDispatcher()
    dispatcher:addEventListenerWithSceneGraphPriority(touch,self.scene)
    local keyboard=cc.EventListenerKeyboard:create()
    keyboard:registerScriptHandler(function(k) self.keys[k]=true end,cc.Handler.EVENT_KEYBOARD_PRESSED)
    keyboard:registerScriptHandler(function(k) self.keys[k]=nil end,cc.Handler.EVENT_KEYBOARD_RELEASED)
    dispatcher:addEventListenerWithSceneGraphPriority(keyboard,self.scene)
    self.backgroundListener=cc.EventListenerCustom:create("APP_ENTER_BACKGROUND_EVENT",function()
        self.stick=nil;self.target=nil;self.keys={}
        if self.world then self.world.paused=true;self:save();self:refreshHUD() end
    end)
    dispatcher:addEventListenerWithSceneGraphPriority(self.backgroundListener,self.scene)
    self.scene:scheduleUpdateWithPriorityLua(function(dt)
        local ok,err=xpcall(function() self:update(dt) end,debug.traceback)
        if not ok then self:fail(err) end
    end,0)
    self.scene:registerScriptHandler(function(event)
        if event=="exit" then self:save() end
    end)
    return self.scene
end

function Scene:button(parent,text,x,y,w,h,callback)
    panel(parent,x,y,w,h)
    label(parent,text,20,x+w/2,y+h/2)
    self.buttons[#self.buttons+1]={x=x,y=y,w=w,h=h,callback=callback,parent=parent}
end
function Scene:menu()
    self.menuNode=cc.Node:create();self.scene:addChild(self.menuNode,100)
    local bg=display.newSprite("starter/bg.png")
    if bg then
        bg:setPosition(display.cx,display.cy)
        bg:setScale(math.max(display.width/bg:getContentSize().width,display.height/bg:getContentSize().height))
        self.menuNode:addChild(bg)
    end
    local cx,cy=display.cx,display.cy
    panel(self.menuNode,cx-270,cy-190,540,380,cc.c4f(0.025,0.03,0.035,0.96))
    label(self.menuNode,"SINGLE PLAYER",35,cx,cy+135,cc.c4b(231,187,104,255))
    label(self.menuNode,"Local journey  /  Eslania wilderness",19,cx,cy+91)
    if self.saved then
        label(self.menuNode,self.saved.name.."  |  Level "..self.saved.level,26,cx,cy+35)
        label(self.menuNode,string.format("%d defeated   /   %d gold",self.saved.kills,self.saved.gold),18,cx,cy)
        self:button(self.menuNode,"CONTINUE",cx-150,cy-105,300,58,function() self:start(self.saved) end)
    else
        label(self.menuNode,"Name your Slayer",18,cx,cy+45)
        self.nameField=ccui.TextField:create("Character name","Arial",26)
        self.nameField:setString("Wanderer");self.nameField:setMaxLengthEnabled(true);self.nameField:setMaxLength(20)
        self.nameField:setPosition(cx,cy);self.nameField:setTouchEnabled(true)
        self.menuNode:addChild(self.nameField,30)
        self:button(self.menuNode,"CREATE LOCAL CHARACTER",cx-200,cy-105,400,58,function()
            local name=self.nameField:getString():gsub("^%s+",""):gsub("%s+$","")
            self:start(nil,name~="" and name or "Wanderer")
        end)
    end
    local note="Tap to move. Drag the left pad. Attack nearby enemies. Progress saves locally."
    if self.loadStatus=="recovered" then note="Recovered the previous valid save." end
    if self.loadStatus=="damaged" then note="Save unreadable. A new journey is available; original save remains until you start." end
    local info=label(self.menuNode,note,15,cx,cy-150)
    info:setDimensions(490,50)
end

function Scene:start(saved,name)
    self.menuNode:removeFromParent();self.menuNode=nil;self.buttons={}
    self.mapMeta=lt.CacheManager:getMapMeta("12")
    assert(self.mapMeta,"Starting map missing")
    self.mapData=cpp.MapManager:getInstance():loadMapDataAndObject("map/data/1002.bin","map/object/1002.obj")
    assert(self.mapData,"Starting map data missing")
    self.world=World.new(saved,function(x,y) return self:walkable(x,y) end)
    if name then self.world.state.name=name:sub(1,32) end
    local s=self.world.state
    if not self:walkable(s.x,s.y) then s.x,s.y=self:findOpen(s.x,s.y) end
    self.world.enemies={};self.world:spawn()
    -- Original MapActor expects access to the local hero's race and status.
    local hero=lt.HeroData.new(1,{})
    hero:setValue(lt.ServerClientEnum.CreatureValueDef.Attr_Race,1)
    lt.GameModule._heroData=hero
    self.map=lt.MapActor.new()
    self.map:setMapMeta(self.mapMeta);self.map:loadMap(self.mapData)
    self.map:setScale(1.25)
    self.scene:addChild(self.map)
    self.entities=self.map._heroNode
    self.hero=self:actor("model_1_1_0_0",0)
    self.map._heroActor=self.hero.node
    for _,e in ipairs(self.world.enemies) do e.visual=self:actor("creature",6) end
    self.hud=cc.Node:create();self.scene:addChild(self.hud,50)
    panel(self.hud,18,display.height-100,390,82)
    self.title=label(self.hud,s.name.."  |  SLAYER",21,210,display.height-42)
    self.stats=label(self.hud,"",16,210,display.height-75)
    panel(self.hud,display.cx-170,display.height-68,340,50)
    label(self.hud,"ESLANIA  /  OFFLINE",18,display.cx,display.height-43,cc.c4b(231,187,104,255))
    self:button(self.hud,"BAG",display.width-290,display.height-76,80,54,function() self:inventory() end)
    self:button(self.hud,"SAVE",display.width-200,display.height-76,80,54,function() self:save() end)
    self:button(self.hud,"PAUSE",display.width-110,display.height-76,92,54,function()
        self.world.paused=not self.world.paused;self:save();self:refreshHUD()
    end)
    self:button(self.hud,"ATTACK",display.width-164,34,140,94,function() self.world:attack() end)
    self:button(self.hud,"HEAL",display.width-283,40,104,68,function() self.world:potion() end)
    self.notice=label(self.hud,"Explore, defeat enemies, and collect supplies.",19,display.cx,110)
    self.saveLabel=label(self.hud,"",14,display.cx,24,cc.c4b(186,190,176,255))
    local stick=cc.DrawNode:create()
    stick:drawSolidCircle(cc.p(115,115),72,0,40,cc.c4f(0.02,0.03,0.04,0.55))
    stick:drawCircle(cc.p(115,115),72,0,40,false,cc.c4f(0.8,0.65,0.35,0.7))
    stick:drawSolidCircle(cc.p(115,115),25,0,24,cc.c4f(0.7,0.6,0.4,0.4))
    self.hud:addChild(stick,12)
    label(self.hud,"MOVE",14,115,24)
    self:refreshHUD();self:save()
    print("OFFLINE WORLD READY")
end

function Scene:walkable(x,y)
    local m,n=lt.MapUtil:calcMN(x,y)
    if m<1 or n<1 or m>=self.mapData:getMCount()-1 or n>=self.mapData:getNCount()-1 then return false end
    local tile=self.mapData:getMapTile(m,n)
    if not tile then return false end
    local b=tile:getBlock()
    return not lt.MapUtil:IsBlockAll(b) and not lt.MapUtil:IsBlockGround(b)
end
function Scene:findOpen(x,y)
    for r=0,100 do
        for dx=-r,r do for _,dy in ipairs({-r,r}) do
            local px,py=x+dx*48,y+dy*32
            if self:walkable(px,py) then return px,py end
        end end
    end
    error("No walkable starting point")
end
function Scene:actor(model,id)
    local a={node=cc.Node:create(),sprite=cc.Sprite:create(),model=model,id=id,actions={},time=0}
    a.node:addChild(a.sprite);self.entities:addChild(a.node)
    a.shadow=cc.DrawNode:create()
    a.shadow:drawSolidCircle(cc.p(0,0),14,0,24,cc.c4f(0,0,0,0.4))
    a.shadow:setScaleY(0.45);a.node:addChild(a.shadow,-1)
    self.actors[#self.actors+1]=a
    return a
end
function Scene:animate(a,action,dir,dt,x,y)
    local key=action..":"..dir
    if a.key~=key then a.time=0;a.key=key end
    if not a.actions[key] then
        if a.id==0 then a.actions[key]=lt.ActionActor.new(a.model,action,dir,true,false)
        else a.actions[key]=lt.ActionMonster.new(a.model,a.id,action,dir,true,false) end
    end
    local animation=a.actions[key]
    a.time=a.time+dt
    local count=animation:getSpriteFrameCount()
    if count>0 then
        local frame=animation:getSpriteFrame(math.floor(a.time/math.max(0.04,animation:getStep()))%count+1)
        a.sprite:setSpriteFrame(frame.sprite)
        a.sprite:setPosition(frame.x+frame.size.width/2,-frame.y-frame.size.height/2)
    end
    a.node:setPosition(x,y)
    local m,n=lt.MapUtil:calcMN(x,y)
    a.node:setLocalZOrder(lt.MapUtil:calcMNZorder(m,n,0))
end
function Scene:touchBegin(p)
    if self.failed then return false end
    for i=#self.buttons,1,-1 do
        local b=self.buttons[i]
        if b.parent:isVisible() and p.x>=b.x and p.x<=b.x+b.w and p.y>=b.y and p.y<=b.y+b.h then
            local ok,err=xpcall(b.callback,debug.traceback);if not ok then self:fail(err) end
            return false
        end
    end
    if not self.world or self.world.paused then return false end
    if p.x<215 and p.y<215 then self.stick={x=p.x,y=p.y,dx=0,dy=0}
    elseif p.y<display.height-110 then
        local localPos=self.map:convertToNodeSpace(p)
        self.target={x=localPos.x,y=localPos.y}
    else return false end
    return true
end
function Scene:touchMove(p)
    if self.stick then self.stick.dx=p.x-self.stick.x;self.stick.dy=p.y-self.stick.y
    elseif self.target then local q=self.map:convertToNodeSpace(p);self.target={x=q.x,y=q.y} end
end
function Scene:inventory()
    if self.bag then
        for i=#self.buttons,1,-1 do
            if self.buttons[i].parent==self.bag then table.remove(self.buttons,i) end
        end
        self.bag:removeFromParent();self.bag=nil;self.world.paused=false;return
    end
    self.world.paused=true
    self.bag=cc.Node:create();self.scene:addChild(self.bag,80)
    local cx,cy=display.cx,display.cy
    panel(self.bag,cx-220,cy-150,440,300,cc.c4f(0.025,0.03,0.04,0.98))
    label(self.bag,"SUPPLIES",29,cx,cy+105,cc.c4b(231,187,104,255))
    local s=self.world.state
    label(self.bag,string.format("Gold: %d\nHealing potions: %d\nEnemies defeated: %d",s.gold,s.potions,s.kills),23,cx,cy+15)
    label(self.bag,"HEAL restores 65 HP. Every third victory grants a potion.",14,cx,cy-70)
    self:button(self.bag,"CLOSE",cx-90,cy-130,180,44,function() self:inventory() end)
end
function Scene:refreshHUD()
    if not self.world or not self.stats then return end
    local s=self.world.state
    self.stats:setString(string.format("HP %d/%d   LV %d   XP %d/%d",s.hp,self.world:maxHP(),s.level,s.xp,self.world:xpGoal()))
end
function Scene:save()
    if not self.world then return end
    local ok,err=self.store:save(self.world.state)
    if self.saveLabel then self.saveLabel:setString(ok and "Saved on this device" or "SAVE FAILED: "..tostring(err)) end
    print(ok and "OFFLINE SAVED" or "OFFLINE SAVE ERROR "..tostring(err))
    self.saveElapsed=0
end
function Scene:update(dt)
    if not self.world or self.failed then return end
    dt=math.min(dt,0.1);self.elapsed=self.elapsed+dt
    local s=self.world.state
    local ox,oy=s.x,s.y
    if not self.world.paused then
        local dx,dy=0,0
        if self.stick then dx,dy=self.stick.dx,self.stick.dy end
        if self.target then
            dx,dy=self.target.x-s.x,self.target.y-s.y
            if math.sqrt(dx*dx+dy*dy)<7 then self.target=nil;dx,dy=0,0 end
        end
        local k=cc.KeyCode
        if k then
            if self.keys[k.KEY_W] or self.keys[k.KEY_UP_ARROW] then dy=dy+100 end
            if self.keys[k.KEY_S] or self.keys[k.KEY_DOWN_ARROW] then dy=dy-100 end
            if self.keys[k.KEY_A] or self.keys[k.KEY_LEFT_ARROW] then dx=dx-100 end
            if self.keys[k.KEY_D] or self.keys[k.KEY_RIGHT_ARROW] then dx=dx+100 end
            if self.keys[k.KEY_SPACE] then self.world:attack() end
        end
        self.world:move(dx,dy,dt)
        if dx~=0 or dy~=0 then self.dir=lt.MapUtil:calcDirectionXY(dx,dy) end
        self.world:update(dt)
    end
    local action=distance(ox,oy,s.x,s.y)>0.1 and 1 or 0
    if self.heroAttack and self.elapsed<self.heroAttack then action=2 end
    self:animate(self.hero,action,self.dir or 0,dt,s.x,s.y)
    for _,e in ipairs(self.world.enemies) do
        e.visual.node:setVisible(e.hp>0)
        if e.hp>0 then
            local dir=lt.MapUtil:calcDirectionXY(s.x-e.x,s.y-e.y)
            self:animate(e.visual,e.action,dir,dt,e.x,e.y)
        end
    end
    local scale=self.map:getScale()
    self.map:setPosition(display.cx-s.x*scale,display.cy-s.y*scale)
    self.map:updateDraw(s.x,s.y)
    lt.GameBoard:setDeltaTime(dt)
    local dirty=false
    for _,event in ipairs(self.world.events) do
        if event.kind=="attack" then self.heroAttack=self.elapsed+0.35
        elseif event.kind=="reward" then self.notice:setString("Victory!  +20 XP   +8 gold");dirty=true
        elseif event.kind=="level" then self.notice:setString("LEVEL "..s.level.."  /  Health restored");dirty=true
        elseif event.kind=="potion" then self.notice:setString("Potion used. Health restored.");dirty=true
        elseif event.kind=="revive" then self.notice:setString("Revived. Lost up to 10 gold.");dirty=true
        elseif event.kind=="damage" then
            local flash=cc.TintTo:create(0.08,255,120,100)
            event.enemy.visual.sprite:runAction(cc.Sequence:create(flash,cc.TintTo:create(0.12,255,255,255)))
        end
    end
    self.world.events={}
    self:refreshHUD()
    self.saveElapsed=self.saveElapsed+dt
    if dirty or self.saveElapsed>3 then self:save() end
end
function Scene:fail(err)
    if self.failed then return end
    self.failed=true
    print("OFFLINE ERROR "..tostring(err))
    local f=io.open(device.writablePath.."offline-error.txt","w")
    if f then f:write(tostring(err));f:close() end
    label(self.scene,"Offline error: "..tostring(err):sub(1,350),16,display.cx,display.cy,cc.c4b(255,120,100,255))
end
return Scene
