-- Bounded grid search. Return one legal step; the original actor animates it.
local Navigation={}
local directions={{0,-1},{1,0},{0,1},{-1,0},{1,-1},{1,1},{-1,1},{-1,-1}}
function Navigation.nextStep(m,n,tm,tn,open,near)
    local function key(x,y) return x..":"..y end
    local function goal(x,y)
        if near then
            return (x~=tm or y~=tn) and math.abs(x-tm)<=1 and math.abs(y-tn)<=1
                and (x==tm or y==tn or (open(x,tn) and open(tm,y)))
        end
        return x==tm and y==tn
    end
    if goal(m,n) then return nil end
    local first={m=m,n=n,g=0}
    local frontier={first};local seen={[key(m,n)]=first}
    for _=1,384 do
        if #frontier==0 then return nil end
        local best,score=1,math.huge
        for i,v in ipairs(frontier) do
            local f=v.g+math.max(math.abs(v.m-tm),math.abs(v.n-tn))
            if f<score then best,score=i,f end
        end
        local cur=table.remove(frontier,best)
        if goal(cur.m,cur.n) then
            while cur.parent and cur.parent~=first do cur=cur.parent end
            return cur.m,cur.n
        end
        for _,d in ipairs(directions) do
            local x,y=cur.m+d[1],cur.n+d[2]
            if math.abs(x-m)<=16 and math.abs(y-n)<=16 and open(x,y)
                and (d[1]==0 or d[2]==0 or (open(cur.m+d[1],cur.n) and open(cur.m,cur.n+d[2]))) then
                local k=key(x,y);local g=cur.g+1
                local old=seen[k]
                if not old or g<old.g then
                    local v={m=x,n=y,g=g,parent=cur};seen[k]=v;frontier[#frontier+1]=v
                end
            end
        end
    end
end
return Navigation
