-- Local authority behind the ORIGINAL character screens, HUD and windows.
local Bridge={}
local Roster=require("app.offline.Roster")
local World=require("app.offline.World")
local Navigation=require("app.offline.Navigation")
local Locations=require("app.offline.Locations")

local function later(fn)
    require("cocos.framework.scheduler").performWithDelayGlobal(function()
        local ok,err=xpcall(fn,__G__TRACKBACK__)
        if not ok then print(err) end
    end,0)
end
function Bridge:message(text)
    lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_MESSAGEBOX_SMALL,{content=text})
end
function Bridge:save()
    if self.world then
        local agent=lt.AgentManager:getHeroAgent()
        if agent then self.world.state.x,self.world.state.y=agent:getPosition() end
        local ok,err=self.store:save(self.world.state)
        if not ok then print("OFFLINE SAVE ERROR "..tostring(err)) end
        return ok
    elseif self.state then return self.store:save(self.state) end
end
function Bridge:roleList()
    local data=self.store.data
    local list={_bySelect=math.max(0,data.selected-1),_byRoleCount=#data.characters,_astRoleList={}}
    for slot,s in ipairs(data.characters) do
        local a=s.appearance or {}
        list._astRoleList[slot]={_szRoleName=s.name,_byPos=slot,_byJob=a.byRace or 1,
            _bySex=a.bySex or 0,_byFaceShape=a.byFaceShape or 1,_byHairColor=a.byHairColor or 0,
            _bySkinColor=a.bySkinColor or 0,_wSTR=a.wSTR or 20,_wDEX=a.wDEX or 20,_wINT=a.wINT or 20,
            _wLevel=s.level,_wBladeLevel=s.level,_wSwordLevel=1,_wGunLevel=1,_wHealLevel=1,_wBlessLevel=1,
            _dwRepute=0,_byGrade=0,_byAdvanced=0,_szWeaponAppr="0",_szShieldAppr="0",_szHelmetAppr="0",
            _szBodyAppr="0",_szTrousersAppr="0",_szDeleteTime="",_byDelete=0,_dwServerID=1,
            _szPlayerID="offline-"..slot,_szCreateTime=s.created or "2026-11-15 00:00:00"}
    end
    return list
end
function Bridge:heroProps()
    local s=self.state
    local a=s.appearance or {}
    local E=lt.ServerClientEnum
    local values={
        [E.ObjectValueDef.Attr_DisplayName]=s.name,
        [E.ObjectValueDef.Attr_Status]=s.hp<=0 and lt.Constant.HeroStatus.DEAD or lt.Constant.HeroStatus.ALIVE,
        [E.CreatureValueDef.Attr_Race]=a.byRace or 1,
        [E.CreatureValueDef.Attr_Gender]=a.bySex or 0,
        [E.CreatureValueDef.Attr_FaceShape]=a.byFaceShape or 1,
        [E.CreatureValueDef.Attr_HairColor]=a.byHairColor or 1,
        [E.CreatureValueDef.Attr_SkinColor]=a.bySkinColor or 1,
        [E.CreatureValueDef.Attr_Level]=s.level,
        [E.CreatureValueDef.Attr_BladeLevel]=s.level,
        [E.CreatureValueDef.Attr_SwordLevel]=1,
        [E.CreatureValueDef.Attr_GunLevel]=1,
        [E.CreatureValueDef.Attr_HealLevel]=1,
        [E.CreatureValueDef.Attr_BlessLevel]=1,
        [E.CreatureValueDef.Attr_TotalSTR]=a.wSTR or 20,
        [E.CreatureValueDef.Attr_TotalDEX]=a.wDEX or 20,
        [E.CreatureValueDef.Attr_TotalINT]=a.wINT or 20,
        [E.CreatureValueDef.Attr_CurHp]=s.hp,
        [E.CreatureValueDef.Attr_HpMax]=100+s.level*20,
        [E.CreatureValueDef.Attr_CurMp]=100,
        [E.CreatureValueDef.Attr_MpMax]=100,
        [E.CreatureValueDef.Attr_AttackSpeed]=100,
        [E.CreatureValueDef.Attr_MoveSpeedRate]=100,
        [E.CreatureValueDef.Attr_MoveMode]=2,
        [E.CreatureValueDef.Attr_AttackRange]=1,
        [E.CreatureValueDef.Attr_Sight]=14,
        [E.CreatureValueDef.Attr_MinDamage]=20,
        [E.CreatureValueDef.Attr_MaxDamage]=24,
        [E.CreatureValueDef.Attr_Tohit]=100,
        [E.PlayerValueDef.Attr_PlayerID]="offline-"..self.store.data.selected,
        [E.PlayerValueDef.Attr_GuildName]="",
        [E.PlayerValueDef.Attr_JinBi]=s.gold,
        [E.PlayerValueDef.Attr_CurExp]=s.xp,
        [E.PlayerValueDef.Attr_BladeExp]=s.xp,
        [E.PlayerValueDef.Attr_HistoryDomainTopLevel]=s.level,
        [E.PlayerValueDef.Attr_PureSTR]=a.wSTR or 20,
        [E.PlayerValueDef.Attr_PureDEX]=a.wDEX or 20,
        [E.PlayerValueDef.Attr_PureINT]=a.wINT or 20,
        [E.PlayerValueDef.Attr_InitSTR]=a.wSTR or 20,
        [E.PlayerValueDef.Attr_InitDEX]=a.wDEX or 20,
        [E.PlayerValueDef.Attr_InitINT]=a.wINT or 20,
        [E.PlayerValueDef.Attr_PackagePositionHeight]=8,
        [E.PlayerValueDef.Attr_MaxStorage]=1,
        [E.PlayerValueDef.Attr_BeltSize]=6,
    }
    local props={}
    for key,value in pairs(values) do
        props[#props+1]={properCode=key,intValue=type(value)=="number" and value or 0,strValue=type(value)=="string" and value or ""}
    end
    return props
end
function Bridge.create()
    _G_OFFLINE_BRIDGE=Bridge
    Bridge.store=Roster.new(device.writablePath.."offline-characters-v2.json",json,
        device.writablePath.."offline-save-v1.json")
    local status
    Bridge.state,status=Bridge.store:load()
    assert(status~="damaged","Local character saves are damaged; originals were preserved.")
    local corrected=false
    for _,state in ipairs(Bridge.store.data.characters) do
        if Locations.correctStart(state) then corrected=true end
    end
    if corrected and Bridge.state then assert(Bridge.store:save(Bridge.state)) end
    -- The original initialization registers every original FGUI component/window.
    require("app.Game"):create()
    Bridge:install()
    lt.RoleModule:setPID("offline-1")
    lt.RoleModule:refreshData(Bridge:roleList())
    lt.SocketManager:setUserId("offline-1")
    lt.SocketManager:setServerName("Single Player")
    lt.SocketManager:setServerId(1)
    _G_TOKEN="offline-local"
    local dispatcher=cc.Director:getInstance():getEventDispatcher()
    Bridge.background=cc.EventListenerCustom:create("APP_ENTER_BACKGROUND_EVENT",function()
        Bridge:save();if Bridge.world then Bridge.world.paused=true end
    end)
    Bridge.foreground=cc.EventListenerCustom:create("APP_ENTER_FOREGROUND_EVENT",function()
        if Bridge.world then Bridge.world.paused=false end
    end)
    dispatcher:addEventListenerWithFixedPriority(Bridge.background,-999)
    dispatcher:addEventListenerWithFixedPriority(Bridge.foreground,-999)
    return lt.RoleScene.new()
end
function Bridge:install()
    local bridge=self
    -- LoginCmd installs methods onto SocketApi when first required.
    local loginCmd=lt.LoginCmd
    lt.Sdk.getUUID=function() return "offline-local" end
    lt.Sdk.getDeviceId=function() return "offline-local" end
    lt.RoleLayerTL.resetClientVer=function() lt.SocketApi:setClientVer("offline-1") end
    lt.HttpApi.getChannelId=function() return "offline" end
    local selectTarget=lt.CompTask.selectTarget
    lt.CompTask.selectTarget=function(comp,event)
        local agent=event.param and event.param.agent
        if agent and not agent:getHeroData() then return end
        return selectTarget(comp,event)
    end
    local roleCtor=lt.RoleLayerTL.ctor
    lt.RoleLayerTL.ctor=function(layer,...)
        roleCtor(layer,...)
        layer._openType:setSelectedIndex(bridge.state and 0 or 1)
    end
    local onCreate=lt.RoleLayerTL.onCreateRoleAck
    lt.RoleLayerTL.onCreateRoleAck=function(layer,event)
        if event.param._byResult==lt.CliGgProto.PROTO_SUCCESS then
            layer._selectRole:setSelectIndex(bridge.store.data.selected)
        end
        return onCreate(layer,event)
    end
    local getEdit=lt.AutoFightManager.getEditConfByIndex
    lt.AutoFightManager.getEditConfByIndex=function(manager,index)
        local conf=getEdit(manager,index)
        if index==lt.Constant.SETTINGS_TYPES.SHOW_PLAYERS and conf.value==nil then conf.value=20 end
        return conf
    end
    -- All transports are disconnected. UI features use the same module interfaces.
    lt.SocketApi._sendData=function() end
    lt.SocketManager.sendData=function() end
    lt.SocketManager.isAlive=function() return true end
    lt.SocketManager.updateBreakInfo=function() end
    lt.SocketApi.sendToGs=function(_,id,msg) bridge:request(id,msg) end
    lt.SocketApi.selectRoleReq=function(_,name)
        if bridge.entering or bridge.world then return end
        local state,err=bridge.store:select(name)
        if not state then bridge:message(err);return end
        bridge.state=state
        later(function() bridge:enter() end)
    end
    lt.RoleModule.selectRoleReq=lt.SocketApi.selectRoleReq
    lt.RoleModule.createRoleReq=function(_,param)
        if bridge.world or bridge.entering then return end
        local world=World.new()
        local state=world.state
        state.name=param.szRoleName
        state.appearance=param
        Locations.start(state)
        state.created=os.date("%Y-%m-%d %H:%M:%S")
        local ok,err=bridge.store:add(state)
        if not ok then bridge:message(err);return end
        bridge.state=state
        later(function()
            lt.SocketApi:dispatchProto(lt.SocketApi._Event.CreateRole_ACK,{_byResult=lt.CliGgProto.PROTO_SUCCESS,
                _stReply={_stSucc=bridge:roleList()}})
        end)
    end
    lt.RoleModule.deleteRoleReq=function() bridge:message("Character deletion is unavailable in this offline build.") end
    lt.SocketApi.repeatRoleName=function(_,name)
        local result=lt.CliGgProto.PROTO_SUCCESS
        for _,state in ipairs(bridge.store.data.characters) do
            if state.name:lower()==tostring(name):lower() then result=lt.CliGgProto.PROTO_FAILURE end
        end
        later(function() lt.SocketApi:dispatchProto(lt.SocketApi._Event.VerifyUserName_ACK,{_byResult=result}) end)
    end
    lt.SocketApi.reselRole=function()
        bridge:save()
        if bridge.timer then require("cocos.framework.scheduler").unscheduleGlobal(bridge.timer);bridge.timer=nil end
        bridge.world=nil;bridge.hero=nil;bridge.entering=false;bridge.deathShown=false
        later(function()
            lt.SocketApi:dispatchProto(lt.SocketApi._Event.ReselRole_ACK,
                {_byResult=lt.CliGgProto.PROTO_SUCCESS,_stReply=bridge:roleList()})
        end)
    end
    lt.RoleLayerTL.reportHttpApiRoleInfo=function() end
    lt.RoleLayerTL.statisticCreateRoleReport=function() end
    for _,method in ipairs({"statisLogin","statisCreateRole","statisRoleInfo","statisLevelUp"}) do lt.StatisticModule[method]=function() end end
    lt.GameModule.sendConfirmOnLogin=function() end
    loginCmd.logoutReq=function() bridge:save() end
    lt.Game.resetScene=function() bridge:save();display.runScene(lt.RoleScene.new()) end
end
function Bridge:enter()
    if self.entering or self.world then return end
    self.entering=true
    self.deathShown=false
    assert(self.state,"Create a local character first")
    local scene=lt.GameScene.new()
    self.hero=lt.HeroData.new(1,self:heroProps())
    lt.GameModule._heroData=self.hero
    if self.state.hp<=0 then
        -- MainUILayer may observe the dead hero as soon as the scene enters.
        lt.GameModule._bufferTable={[lt.BuffEnum.EFFECT_CLASS_COMA]=60}
    end
    local playerId="offline-"..self.store.data.selected
    lt.PrefManager:setUserId(playerId)
    lt.TimeCounter:serverTimeUpdate(os.date("%Y-%m-%d %H:%M:%S"))
    lt.TimeCounter:serverOpenTimeUpdate(os.date("%Y-%m-%d",os.time()-86400))
    lt.FunctionToggleModule:init()
    lt.AudioManager:reloadConfig()
    lt.AutoFightManager:reloadConfig(playerId,self.hero:getRace())
    display.runScene(scene)
    later(function() self:loadWorld() end)
end
function Bridge:loadWorld()
    local s=self.state
    local w=lt.AgentManager:getWorldAgent()
    w:loadMap(s.map)
    local map=w:getMapAgent()
    local function walkable(x,y)
        local m,n=lt.MapUtil:calcMN(x,y)
        return not map:isMapBlocked(m,n)
    end
    if not walkable(s.x,s.y) then
        local found=false
        for r=1,80 do
            for dx=-r,r do
                for _,dy in ipairs({-r,r}) do
                    local x,y=s.x+dx*48,s.y+dy*32
                    if not found and walkable(x,y) then s.x,s.y=x,y;found=true end
                end
            end
            if found then break end
        end
    end
    local function safe(x,y)
        local m,n=lt.MapUtil:calcMN(x,y)
        return map:getWholeMapSafe() or not not map:getSafeRect(m,n)
    end
    local function mobOpen(x,y)
        local m,n=lt.MapUtil:calcMN(x,y)
        return walkable(x,y) and not safe(x,y) and not map:getPortalSector(m,n)
    end
    self.world=World.new(s,walkable,{})
    self.world.safe=safe
    local m,n=lt.MapUtil:calcMN(s.x,s.y)
    lt.GameModule:onObjAppear({param={objID=1,objType=lt.Constant.ObjType.OBJ_PLAYER,x=m,y=n,direction=0,objprops=self:heroProps(),bufferstatus={}}})
    self.world:spawn(Locations.population(s.map,mobOpen))
    self:syncHero()
    self:spawnMonsters()
    self.world.isMoving=function(e)
        local a=w:getAgent(e.objID)
        return a and (not a:isInStateId(lt.Constant.MONSTER_STATE_IDLE) or a:getCmdSystem():hasCmd())
    end
    self.world.canHit=function(e,hero)
        local m,n=lt.MapUtil:calcMN(e.x,e.y)
        local hm,hn=lt.MapUtil:calcMN(hero.x,hero.y)
        -- Diagonal attacks cannot pass through the corner of a wall.
        return m==hm or n==hn or (not map:isMapBlocked(m,hn) and not map:isMapBlocked(hm,n))
    end
    self.world.navigate=function(e,x,y,near)
        local a=w:getAgent(e.objID)
        if not a or self.world.isMoving(e) then return end
        local m,n=a:getMN()
        local tm,tn=lt.MapUtil:calcMN(x,y)
        local hm,hn=lt.MapUtil:calcMN(self.state.x,self.state.y)
        local function open(cm,cn)
            local cx,cy=lt.MapUtil:calcMNMid(cm,cn)
            if map:isMapBlocked(cm,cn) or safe(cx,cy) or map:getPortalSector(cm,cn) or (cm==hm and cn==hn) then return false end
            for _,other in ipairs(self.world.enemies) do
                if other~=e and other.hp>0 then
                    local om,on=lt.MapUtil:calcMN(other.x,other.y)
                    if (om==cm and on==cn) or (other.targetM==cm and other.targetN==cn) then return false end
                end
            end
            return true
        end
        local nm,nn=Navigation.nextStep(m,n,tm,tn,open,near)
        if nm then
            e.targetM,e.targetN=nm,nn
            lt.GameModule:onObjMove({param={objID=e.objID,newX=nm,newY=nn,
                direction=lt.MapUtil:calcDirectionMN(m,n,nm,nn),moveType=lt.Constant.MOVE_RUN}})
        end
    end
    self:syncInventory()
    local scheduler=require("cocos.framework.scheduler")
    if self.timer then scheduler.unscheduleGlobal(self.timer) end
    self.timer=scheduler.scheduleGlobal(function(dt)
        local ok,err=xpcall(function() self:update(dt) end,__G__TRACKBACK__)
        if not ok then scheduler.unscheduleGlobal(self.timer);self.timer=nil end
    end,0.1)
    self:save()
    self.entering=false
    if s.hp<=0 then self:showDeath() end
end
function Bridge:spawnMonsters(only)
    local E=lt.ServerClientEnum
    for _,e in ipairs(self.world.enemies) do
      if not only or only==e then
        e.objID=100+e.id
        local m,n=lt.MapUtil:calcMN(e.x,e.y)
        e.x,e.y=lt.MapUtil:calcMNMid(m,n)
        e.homeX,e.homeY=e.x,e.y
        local props={
            {properCode=E.ObjectValueDef.Attr_ObjType,intValue=lt.Constant.ObjType.OBJ_MONSTER},
            {properCode=E.ObjectValueDef.Attr_Status,intValue=0},
            {properCode=E.ObjectValueDef.Attr_MasterID,intValue=0},
            {properCode=E.ObjectValueDef.Attr_DisplayName,strValue=e.name or "Turning Dead"},
            {properCode=E.MonsterValueDef.Attr_MonsterIdx,intValue=e.monster or 5},
            {properCode=E.ObjectValueDef.Attr_Appr,intValue=e.model or 6},
            {properCode=E.CreatureValueDef.Attr_CurHp,intValue=e.hp},
            {properCode=E.CreatureValueDef.Attr_HpMax,intValue=e.maxHP},
            {properCode=E.CreatureValueDef.Attr_Level,intValue=e.level or 2},
            {properCode=E.CreatureValueDef.Attr_MoveMode,intValue=2},
            {properCode=E.CreatureValueDef.Attr_MoveSpeedRate,intValue=100},
            {properCode=E.MonsterValueDef.Attr_MoveInterval,intValue=700},
            {properCode=E.MonsterValueDef.Attr_AttackInterval,intValue=1400},
        }
        lt.GameModule:onObjAppear({param={objID=e.objID,objType=lt.Constant.ObjType.OBJ_MONSTER,x=m,y=n,direction=0,objprops=props,bufferstatus={}}})
      end
    end
end
function Bridge:showDeath()
    if self.deathShown then return end
    self.deathShown=true
    -- Feed the original death notification, animation, mask and revive countdown.
    lt.GameModule._bufferTable=lt.GameModule._bufferTable or {}
    lt.GameModule._bufferTable[lt.BuffEnum.EFFECT_CLASS_COMA]=60
    local scene=display.getRunningScene()
    local main=scene:getLayerManager():getMainUILayer()
    if main._comRevive then main._comRevive:clearTimeCounter() end
    self:syncHero()
    local a=lt.AgentManager:getHeroAgent()
    local m,n=a:getMN()
    lt.GameModule:onObjDie({param={objID=1,x=m,y=n,direction=a:getDirection(),killerID=0}})
end
function Bridge:revive()
    if not self.world or not self.world:revive() then return end
    self.deathShown=false
    local a=lt.AgentManager:getHeroAgent()
    a:changeHeroStatus(lt.Constant.HeroStatus.ALIVE)
    a:changeState(lt.HeroStateIdle.new(a))
    a:getActor():clearDead()
    lt.GameModule._bufferTable=nil
    self:syncHero()
    lt.GameModule:onReliveAck({param={ret=0}})
    self:save()
end
function Bridge:syncInventory()
    local E=lt.ServerClientEnum.ItemValueDef
    local bag={}
    if self.state.potions>0 then
        local race=self.hero:getRace()
        local itemId=race==2 and 304001 or (race==3 and 308001 or 301015)
        bag[1]={objID=10001,objprops={
            {properCode=E.Attr_ItemIdx,intValue=itemId},
            {properCode=E.Attr_ItemType,intValue=1},
            {properCode=E.Attr_SuperposeCount,intValue=self.state.potions},
            {properCode=E.Attr_ItemPositionX,intValue=0},
            {properCode=E.Attr_ItemPositionY,intValue=0},
            {properCode=E.Attr_SaveType,intValue=1},
        }}
    end
    lt.ItemModule:onItemDataInfoAck({param={pakageItem=bag,equipItem={},storageItem={}}})
end
function Bridge:syncHero()
    if not self.hero then return end
    -- UPDATE_HERO also starts CompRevive's timer, so supply the coma duration
    -- before the first notification that exposes a dead hero (including reload).
    if self.state.hp<=0 and not self.deathShown then
        lt.GameModule._bufferTable=lt.GameModule._bufferTable or {}
        lt.GameModule._bufferTable[lt.BuffEnum.EFFECT_CLASS_COMA]=60
    end
    self.hero:setPropertyArray(self:heroProps())
    lt.FunctionToggleModule:refresh()
    local N=lt.NtfManager
    N:dispatchNtf(N.NTF.NTF_UPDATE_HERO_EVENT)
    N:dispatchNtf(N.NTF.NTF_UPDATE_HPMP_EVENT)
    N:dispatchNtf(N.NTF.NTF_LEVEL_EXP_CHANGE)
    local scene=display.getRunningScene()
    if scene and scene.getLayerManager and scene:getLayerManager() then
        local main=scene:getLayerManager():getMainUILayer()
        -- Retain the original chat component for later reuse, but hide its
        -- entire panel (background, messages and click target) in offline play.
        local chat=main._view and main._view:getChild("comChat")
        if chat then chat:setVisible(false) end
        for _,child in ipairs(main:getChildren()) do
            if child.refreshBarInfo then child:refreshBarInfo() end
        end
    end
end
function Bridge:transfer(target)
    if self.transferring or not self.world or self.state.hp<=0 then return end
    local agent=lt.AgentManager:getHeroAgent()
    local m,n=agent:getMN()
    local portal=lt.AgentManager:getWorldAgent():getMapAgent():getPortalSector(m,n)
    local allowed=portal and tostring(portal.zoneId)==tostring(target)
    if portal and portal.zoneIds then
        for _,code in ipairs(portal.zoneIds) do if tostring(code)==tostring(target) then allowed=true end end
    end
    if not allowed then return end
    local code,tm,tn=Locations.destination(self.state.map,target,m,n)
    if not code then self:message("This passage has no local destination data yet.");return end
    self:save()
    self.transferring=true
    lt.AutoFightManager:endAutoFight()
    later(function()
        self.state.map=code;self.state.x,self.state.y=lt.MapUtil:calcMNMid(tm,tn)
        self.hero:setPropertyArray(self:heroProps())
        self:loadWorld()
        self.transferring=false
    end)
end
function Bridge:request(id,msg)
    local C=lt.ClientCmdDef
    if id==C.CS_TRANSFER_REQ and self.world then self:transfer(msg.mapCode);return end
    if id==C.CONFIRM_ON_LOGIN then return end
    if id==C.MOVE then return end -- Original client predicts local movement.
    if id==C.RELIVE then self:revive();return end
    if id==C.ATTACK and self.world then
        self.world:attack()
        return
    end
    if id==C.C_USE_ITEM and self.world and tonumber(msg.itemObjId)==10001 then
        local paused=self.world.paused
        self.world.paused=false
        local used=self.world:potion()
        self.world.paused=paused
        if used then self:syncInventory();self:syncHero();self:save() end
        return
    end
    -- Nonlocal features keep their original windows, without a remote connection.
    print("OFFLINE unhandled request "..tostring(id))
end
function Bridge:update(dt)
    if not self.world or self.transferring then return end
    local heroAgent=lt.AgentManager:getHeroAgent()
    if not heroAgent then return end
    local s=self.state
    s.x,s.y=heroAgent:getPosition()
    local scene=display.getRunningScene()
    if scene and scene.getLayerManager and scene:getLayerManager() then
        self.world.paused=not scene:getLayerManager():isWindowEmpty()
    end
    for _,e in ipairs(self.world.enemies) do
        local agent=lt.AgentManager:getWorldAgent():getAgent(e.objID)
        if agent and e.hp>0 then
            e.x,e.y=agent:getPosition()
            if agent:isInStateId(lt.Constant.MONSTER_STATE_IDLE) and not agent:getCmdSystem():hasCmd() then
                e.targetM,e.targetN=nil,nil
            end
        end
    end
    self.world:update(dt)
    for _,e in ipairs(self.world.enemies) do
        if e.wasDead and e.hp>0 then
            lt.AgentManager:getWorldAgent():deleteAgent(e.objID)
            self:spawnMonsters(e);e.wasDead=false
        end
    end
    local dirty=false
    for _,event in ipairs(self.world.events) do
        if event.kind=="damage" then
            local e=event.enemy
            local agent=lt.AgentManager:getWorldAgent():getAgent(e.objID)
            if agent then agent:getMonsterData():setValue(lt.ServerClientEnum.CreatureValueDef.Attr_CurHp,e.hp) end
            if e.hp==0 then
                e.wasDead=true
                local m,n=lt.MapUtil:calcMN(e.x,e.y)
                lt.GameModule:onObjDie({param={objID=e.objID,x=m,y=n,direction=0,killerID=1}})
            end
        elseif event.kind=="death" then
            self:showDeath();dirty=true
        elseif event.kind=="hurt" or event.kind=="potion" or event.kind=="reward" or event.kind=="level" or event.kind=="revive" then dirty=true end
    end
    self.world.events={}
    self:syncHero()
    if dirty then self:syncInventory() end
    self.saveElapsed=(self.saveElapsed or 0)+dt
    if dirty or self.saveElapsed>3 then self:save();self.saveElapsed=0 end
end
return Bridge
