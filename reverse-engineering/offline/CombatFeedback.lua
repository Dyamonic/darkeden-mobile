-- Present authoritative hits through the original HP, effects and battle fonts.
local Feedback={}
function Feedback.apply(result,after,initial)
    if initial then return end
    local world=lt.AgentManager:getWorldAgent()
    local mobs={};for _,mob in ipairs(result.mobs or {}) do mobs[mob.objID]=mob end
    local events=result.events or {}
    for index,event in ipairs(events) do
        if event.seq>after and (event.kind=='damage' or event.kind=='hurt') then
            local target=event.kind=='hurt' and 1 or event.objID
            if world:getAgent(target) then
                local nextEvent=events[index+1]
                local skill=event.skill or (nextEvent and nextEvent.kind=='cast' and nextEvent.skill) or 17001
                local attacker=event.kind=='hurt' and event.objID or 1
                local amount=math.max(0,event.amount or 0)
                local mob=mobs[target]
                local hp=target==1 and result.state.hp or (mob and mob.hp)
                local maximum=target==1 and result.state.stats.maxHP or (mob and mob.maxHP)
                if amount>0 and hp and maximum then
                    lt.GameModule:onHpMpChange({param={objID=target,curHP=hp,maxHP=maximum,hpChange=-amount,
                        curMP=0,maxMP=0,mpChange=0,skillID=skill,skillLevel=event.skillLevel or 1,
                        flag=0,attackerID=attacker,beAttacked=hp>0}})
                elseif amount==0 then
                    world:onHpChange(target,0,skill,false,attacker)
                end
            end
        end
    end
end
function Feedback.attackAck(event,previous)
    local world=lt.AgentManager:getWorldAgent();local hero=lt.AgentManager:getHeroAgent()
    local target=event.targetID or (previous and previous.kind=='damage' and previous.objID) or 1
    local actor=world:getAgent(target) or hero
    local m,n=actor:getMN();local hm,hn=hero:getMN()
    local missed=previous and previous.kind=='damage' and previous.amount==0
    lt.GameModule:onAttackAck({param={ret=missed and lt.Constant.ErrorCode.Miss or 0,
        skillID=event.skill,cdRemain=event.cd or 0,targetID=target,targetX=m,targetY=n,
        x=hm,y=hn,direction=hero:getDirection(),extraCode=0}})
end
return Feedback
