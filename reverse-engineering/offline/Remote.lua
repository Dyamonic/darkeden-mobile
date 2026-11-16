-- Original native UI/actors, backed by the private server's authoritative snapshots.
local Remote={};Remote.__index=Remote
function Remote.new(bridge)
    local f=io.open(device.writablePath..'mobile-server.json','r');if not f then return end
    local raw=f:read('*a');f:close();local ok,config=pcall(json.decode,raw)
    assert(ok and type(config.url)=='string' and type(config.token)=='string','Invalid private server configuration')
    return setmetatable({bridge=bridge,config=config,commands={},nextSeq=0,after=0,elapsed=0,dropAgents={}},Remote)
end
function Remote:request(path,payload,callback)
    payload.token=self.config.token
    payload.transport='cocos'
    local delivered=false
    local function finish(result,err)
        if delivered then return end
        delivered=true;callback(result,err)
    end
    local request=require('cocos.framework.network').createHTTPRequest(function(event)
        if event.name~='completed' and event.name~='failed' then return end
        local req=event.request
        local ok,result=pcall(json.decode,req:getResponseString())
        if not ok or type(result)~='table' then
            finish(nil,event.name=='failed' and 'Cannot reach the private server. Start it on your PC.' or 'Invalid private server response');return
        end
        if result.error or req:getResponseStatusCode()~=200 then finish(nil,result.error or 'Private server rejected the request');return end
        finish(result)
    end,self.config.url..'/v1/'..path,'POST')
    request:setPOSTData(json.encode(payload));if request.setTimeout then request:setTimeout(5) end
    request:start()
    -- Some legacy native failures never deliver a terminal event. Late replies
    -- are ignored after this deadline; sequenced commands remain safe to retry.
    require('cocos.framework.scheduler').performWithDelayGlobal(function()
        finish(nil,'Private server request timed out')
    end,8)
end
function Remote:refreshRoster()
    self:request('roster',{},function(result,err)
        if not result then self.bridge:message(err);return end
        local b=self.bridge
        if b.world or b.entering then return end
        b.store.data.characters=result.characters;b.store.data.selected=#result.characters>0 and math.max(1,math.min(b.store.data.selected,#result.characters)) or 0
        b.state=b.store.data.characters[b.store.data.selected]
        if b.state then b.store:save(b.state) end
        lt.RoleModule:refreshData(b:roleList())
    end)
end
function Remote:enter(name)
    if self.entering then return end
    self.entering=true
    self:request('enter',{name=name},function(result,err)
        self.entering=false
        if not result then self.bridge:message(err);return end
        self.commands={};self.nextSeq=result.commandSeq;self.after=result.eventSeq
        self.snapshot=result;self.name=result.state.name;self.bridge.state=result.state
        self.bridge.store:save(result.state);self.bridge:enter()
    end)
end
function Remote:create(param,callback)
    self:request('create',{name=param.szRoleName,appearance=param},function(result,err)
        if not result then self.bridge:message(err);return end
        callback(result.state)
    end)
end
function Remote:queue(kind,args)
    if not self.name then return end
    if #self.commands>=64 then return end
    self.nextSeq=self.nextSeq+1
    self.commands[#self.commands+1]={seq=self.nextSeq,kind=kind,args=args or {}}
end
function Remote:handle(id,msg)
    local C=lt.ClientCmdDef
    local function named(name)
        local code=C[name]
        return code and (id==code or (type(code)=='string' and id==lt.CommonModule:GetNetCmdEnum(code)))
    end
    if named('C_TASK_LIST_REQ') then self.taskSignature=nil;return true end
    if named('C_SET_RELIVE_POINT_REQ') then self:queue('bindResurrection',{npc=tonumber(msg.npcId)});return true end
    local quests={C_TASK_LEADING_REQ='accept',C_TASK_COMMIT_REQ='commit',C_TASK_RECEIVE_REWARD_REQ='claim',C_TASK_GIVE_UP_REQ='abandon',C_TALK_NPC_REQ='talk'}
    for name,action in pairs(quests) do if named(name) then
        self:queue('quest',{action=action,id=tonumber(msg.taskId),npc=tonumber(msg.npcId),talk=tonumber(msg.talkId)});return true
    end end
    if id==C.MOVE or id==C.CONFIRM_ON_LOGIN then return true end
    if id==C.ATTACK then
        if not self.failed then self:queue('attack',{target=tonumber(msg.targetID),skill=tonumber(msg.skillCode)}) end
        return true
    end
    if id==C.RELIVE then self:queue('revive');return true end
    if id==C.C_AssignAttributePoint then
        self:queue('allocate',{str=msg.STRCount,dex=msg.DEXCount,int=msg.INTCount});return true
    end
    if id==C.C_USE_ITEM then
        if tonumber(msg.itemObjId)==10001 then self:queue('potion')
        else self:queue('use',{objID=tonumber(msg.itemObjId)}) end
        return true
    end
    if id==C.EQUIP then self:queue('equip',{objID=tonumber(msg.objID),slot=tonumber(msg.pos)});return true end
    if id==C.UNEQUIP then self:queue('unequip',{objID=tonumber(msg.objID)});return true end
    if id==C.AUTOTIDY_ITEM then self:queue('sort');return true end
    if id==C.C_LEARN_SKILL then self:queue('learn',{id=tonumber(msg.id)});return true end
    if id==C.C_UPGRADE_SKILL then self:queue('learn',{id=tonumber(msg.id),upgrade=true});return true end
    if id==C.OPEN_SHOP_OPERATE then return true end
    if id==C.NpcOperation_ExchangeItem then self:queue('buy',{npc=tonumber(msg.npcId),item=tonumber(msg.itemId),count=tonumber(msg.buyNum)});return true end
    if id==C.SHOP_SELL_OPERATE then self:queue('sell',{npc=tonumber(msg.npcId),objID=tonumber(msg.objId),count=tonumber(msg.num)});return true end
    if id==C.PICKUP then self:queue('pickup',{objID=tonumber(msg.objID)});return true end
    if id==C.CS_TRANSFER_REQ then self:queue('travel',{target=tostring(msg.mapCode)});return true end
    if id==C.NpcOperation_JumpMap then
        self:queue('travel',{npc=tonumber(msg.npcId),talk=tonumber(msg.id)});return true
    end
    return false
end
function Remote:worldReady()
    self.generation=nil;self.dropAgents={}
    if self.snapshot then self:apply(self.snapshot,true) end
end
function Remote:tick(dt)
    self.clock=(self.clock or 0)+dt
    self.elapsed=self.elapsed+dt
    if self.busy or self.reconnecting or self.elapsed<.1 or self.bridge.transferring or self.clock<(self.retryAt or 0) then return end
    self.elapsed=0;self.busy=true
    local a=lt.AgentManager:getHeroAgent();if not a then self.busy=false;return end
    local x,y=a:getPosition();local scene=display.getRunningScene()
    local paused=scene:getLayerManager() and not scene:getLayerManager():isWindowEmpty()
    self:request('step',{name=self.name,x=x,y=y,paused=paused,commands=self.commands,after=self.after},function(result,err)
        self.busy=false
        if not result then
            if (err=='Enter the world first' or err=='Command sequence gap') and not self.reconnecting then
                self.reconnecting=true
                self:request('enter',{name=self.name},function(fresh,error)
                    self.reconnecting=false
                    if fresh then
                        self.commands={};self.nextSeq=fresh.commandSeq;self.after=fresh.eventSeq
                        self.failed=false;self.failures=0;self.retryAt=0;self.snapshot=fresh;self:apply(fresh,true)
                    else
                        self.failed=true;self.retryAt=self.clock+1
                    end
                end)
                return
            end
            self.failed=true;self.failures=(self.failures or 0)+1
            self.retryAt=self.clock+math.min(2,.25*2^math.min(3,self.failures-1))
            -- A transient failure keeps the current world on screen. Never open
            -- a modal dialog or return to character selection during recovery.
            return
        end
        self.failed=false;self.failures=0;self.retryAt=0
        local pending={};for _,c in ipairs(self.commands) do if c.seq>result.commandSeq then pending[#pending+1]=c end end
        self.commands=pending;self.snapshot=result;self:apply(result)
    end)
end
function Remote:apply(result,initial)
    local b=self.bridge;if not b.world then return end
    local old=b.state;local previousHP=old.hp;local previousLevel=old.level
    b.state=result.state;b.world.state=b.state
    local revived=previousHP<=0 and b.state.hp>0
    for _,event in ipairs(result.events or {}) do if event.seq>self.after and event.kind=='revive' then revived=true end end
    if revived then
        lt.AutoFightManager:endAutoFight()
        b.deathShown=false;lt.GameModule._bufferTable=nil
        lt.GameModule:onReliveAck({param={ret=0}})
    end
    if old.map~=b.state.map then
        b.transferring=true;lt.AutoFightManager:endAutoFight()
        require('cocos.framework.scheduler').performWithDelayGlobal(function()
            b:loadWorld();b.transferring=false
        end,0)
        return
    end
    local world=lt.AgentManager:getWorldAgent();local oldMobs={}
    for _,mob in ipairs(b.world.enemies) do oldMobs[mob.objID]=mob end
    if self.generation~=result.generation then
        for id in pairs(oldMobs) do world:deleteAgent(id) end
        for id in pairs(self.dropAgents) do world:deleteAgent(id) end
        oldMobs={};self.dropAgents={};self.moveTargets={};self.generation=result.generation
    end
    local seen={};local deaths={}
    for _,mob in ipairs(result.mobs) do
        seen[mob.objID]=true
        local before=oldMobs[mob.objID];local actor=world:getAgent(mob.objID)
        if actor and before and before.hp<=0 and mob.hp>0 then world:deleteAgent(mob.objID);actor=nil end
        if not actor and mob.hp>0 then b:spawnMonsters(mob);actor=world:getAgent(mob.objID) end
        if actor then
            if before and before.hp>0 and mob.hp<=0 then
                deaths[#deaths+1]=mob
            elseif mob.hp>0 then
                local m,n=actor:getMN();local tm,tn=lt.MapUtil:calcMN(mob.x,mob.y)
                local target=tm..':'..tn
                self.moveTargets=self.moveTargets or {}
                local stalled=actor:getCurStateId()==lt.Constant.MONSTER_STATE_IDLE and not actor:getCmdSystem():hasCmd()
                if (m~=tm or n~=tn) and (self.moveTargets[mob.objID]~=target or stalled) then
                    self.moveTargets[mob.objID]=target
                    lt.GameModule:onObjMove({param={objID=mob.objID,newX=tm,newY=tn,direction=lt.MapUtil:calcDirectionMN(m,n,tm,tn),moveType=lt.Constant.MOVE_RUN}})
                end
            end
        end
    end
    for id in pairs(oldMobs) do if not seen[id] then world:deleteAgent(id) end end
    b.world.enemies=result.mobs
    local feedback=require('app.offline.CombatFeedback')
    feedback.apply(result,self.after,initial)
    for _,mob in ipairs(result.mobs) do
        local actor=world:getAgent(mob.objID)
        if actor then
            local data=actor:getMonsterData()
            if data:getCurHp()~=mob.hp or data:getMaxHp()~=mob.maxHP then actor:changeHp(mob.hp,mob.maxHP) end
        end
    end
    -- Deliver the final hit before entering the native death animation.
    for _,mob in ipairs(deaths) do
        local m,n=lt.MapUtil:calcMN(mob.x,mob.y)
        lt.GameModule:onObjDie({param={objID=mob.objID,x=m,y=n,direction=mob.direction or 0,killerID=1}})
    end
    local a=lt.AgentManager:getHeroAgent();local x,y=a:getPosition()
    if math.abs(x-b.state.x)>96 or math.abs(y-b.state.y)>48 then a:setPosition(b.state.x,b.state.y) end
    b:syncHero()
    if previousHP>0 and b.state.hp<=0 then b:showDeath()
    elseif revived then
        b.deathShown=false;a:changeHeroStatus(lt.Constant.HeroStatus.ALIVE);a:changeState(lt.HeroStateIdle.new(a));a:getActor():clearDead()
        a:setPosition(b.state.x,b.state.y)
    end
    local upgraded=not initial and b.state.level>previousLevel
    for _,event in ipairs(result.events or {}) do if not initial and event.seq>self.after and event.kind=='domainLevel' then upgraded=true end end
    if upgraded then a:showLevelupEffect() end
    local signature=tostring(b.state.inventoryRevision)..':'..b.state.potions
    if self.inventorySignature~=signature then self.inventorySignature=signature;b:syncInventory() end
    local drops={}
    for _,drop in ipairs(result.drops) do
        drops[drop.objID]=true
        if not self.dropAgents[drop.objID] then
            local m,n=lt.MapUtil:calcMN(drop.x,drop.y)
            lt.GameModule:onObjAppear({param={objID=drop.objID,objType=lt.Constant.ObjType.OBJ_ITEM,x=m,y=n,direction=0,
                objprops=b:itemProps(drop,0),bufferstatus={}}})
        end
    end
    for id in pairs(self.dropAgents) do if not drops[id] then world:deleteAgent(id) end end
    self.dropAgents=drops
    if self.taskSignature~=b.state.questRevision then
        self.taskSignature=b.state.questRevision
        local tasks={};for _,task in pairs(b.state.quests or {}) do tasks[#tasks+1]=task end
        lt.TaskModule:onTaskList({param={taskInfoArray=tasks,curMainTaskId=b.state.mainQuest or 0,curAdvanceTaskId=0,
            dailyLiveness=0,weekendLiveness=0,dailyReceiveLiveness=0,weekendReceiveLiveness=0}})
    end
    if self.skillSignature~=b.state.skillRevision then
        self.skillSignature=b.state.skillRevision
        local skills={}
        for id,level in pairs(b.state.skills or {}) do
            local meta=lt.CacheManager:querySkillMeta(tonumber(id))
            skills[#skills+1]={skillId=tonumber(id),skillLevel=level,skillExp=0,skillCd=0,skillRange=meta and meta:getMaxRange() or 1}
        end
        lt.SkillModule:onSkillList({param={skills=skills}})
    end
    for index,event in ipairs(result.events or {}) do
        if event.seq>self.after then
            if event.kind=='message' then b:message(event.text)
            elseif event.kind=='resurrectionBound' then lt.NpcModule:onSetRelivePoint({param={ret=0}})
            elseif event.kind=='purchase' then lt.NpcModule:onBuyItem({param={ret=0}})
            elseif event.kind=='sale' then lt.NpcModule:onSellItem({param={ret=0,changeNum=event.amount}})
            elseif event.kind=='questReward' then lt.TaskModule:onTaskReward({param={ret=0,taskId=event.taskId}}) end
            if event.kind=='cast' and not initial then feedback.attackAck(event,result.events[index-1]) end
            if event.kind=='hurt' and world:getAgent(event.objID) then
                local mob=world:getAgent(event.objID);local m,n=mob:getMN();local hm,hn=a:getMN()
                lt.GameModule:onObjAttack({param={objID=event.objID,skillCode=17001,skillLevel=1,targetID=1,targetX=hm,targetY=hn,
                    targetDir=lt.MapUtil:calcDirectionMN(m,n,hm,hn),code=0,extraCode=0}})
            end
            if event.kind=='learn' and not event.upgrade then lt.SkillModule:onLearnSkill({param={ret=0}}) end
        end
    end
    self.after=result.eventSeq
    local main=display.getRunningScene():getLayerManager():getMainUILayer()
    if main._btnGMNew then
        local button=main._btnGMNew
        button:setVisible(not not b.state.gm)
        if b.state.gm then
            -- The original debug button has alpha=0 and sits under the HP HUD.
            button:setAlpha(1);button:setTouchable(true)
            if main._btnBag then
                local bag=main._btnBag;local size=button:getSize();local bagSize=bag:getSize()
                button:setPosition(bag:getX()-size.width-12,bag:getY()+(bagSize.height-size.height)/2)
            end
        end
    end
    if main._btnGM then main._btnGM:setVisible(false) end
    local pointsSignature=tostring(b.state.points)..':'..tostring(b.state.stats.str)..':'..tostring(b.state.stats.dex)..':'..tostring(b.state.stats.int)
    if self.pointsSignature~=pointsSignature then
        self.pointsSignature=pointsSignature
        lt.NtfManager:dispatchNtf(lt.NtfManager.NTF.NTF_UPDATE_HERO_POINTS_EVENT)
    end
    self.cacheElapsed=(self.cacheElapsed or 0)+.1
    if self.cacheElapsed>=2 then b.store:save(b.state);self.cacheElapsed=0 end
end
return Remote
