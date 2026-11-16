-- Atomic local roster. Character states keep the existing version-1 schema.
local Store=require("app.offline.Store")
local Roster={};Roster.__index=Roster
Roster.MAX=3
function Roster.new(path,codec,legacyPath)
    local self=setmetatable({},Roster)
    self.disk=Store.new(path,codec)
    self.disk.valid=function(_,data) return self:valid(data) end
    self.legacy=Store.new(legacyPath,codec)
    return self
end
function Roster:valid(data)
    if type(data)~="table" or data.version~=2 or type(data.characters)~="table" then return false end
    local count=0;local names={}
    for k,s in pairs(data.characters) do
        if type(k)~="number" or k%1~=0 or k<1 or k>self.MAX or not Store.valid(self.legacy,s) then return false end
        local name=s.name:lower()
        if names[name] then return false end
        names[name]=true;count=count+1
    end
    for i=1,count do if not data.characters[i] then return false end end
    return type(data.selected)=="number" and data.selected%1==0
        and ((count==0 and data.selected==0) or (data.selected>=1 and data.selected<=count))
end
function Roster:load()
    local data,status=self.disk:load()
    if not data then
        if status=="damaged" then return nil,status end
        local state,legacyStatus=self.legacy:load()
        if legacyStatus=="damaged" then return nil,"damaged" end
        data={version=2,selected=state and 1 or 0,characters=state and {state} or {}}
        if state then
            local ok,err=self.disk:save(data)
            if not ok then error("Cannot migrate local character: "..tostring(err)) end
            status="migrated"
        end
    end
    self.data=data
    return data.characters[data.selected],status
end
function Roster:save(state)
    if not self.data or not self.data.characters[self.data.selected] then return false,"No selected character" end
    if not Store.valid(self.legacy,state) then return false,"Invalid character" end
    self.data.characters[self.data.selected]=state
    return self.disk:save(self.data)
end
function Roster:add(state)
    if not self.data then return false,"Roster is not loaded" end
    if #self.data.characters>=self.MAX then return false,"All three character slots are full." end
    if not Store.valid(self.legacy,state) then return false,"Invalid character." end
    for _,s in ipairs(self.data.characters) do
        if s.name:lower()==state.name:lower() then return false,"A character with this name already exists." end
    end
    local previous=self.data.selected
    local slot=#self.data.characters+1
    self.data.characters[slot]=state;self.data.selected=slot
    local ok,err=self.disk:save(self.data)
    if not ok then self.data.characters[slot]=nil;self.data.selected=previous end
    return ok,err
end
function Roster:select(name)
    for slot,state in ipairs(self.data.characters) do
        if state.name==name then
            local previous=self.data.selected;self.data.selected=slot
            local ok,err=self.disk:save(self.data)
            if not ok then self.data.selected=previous;return nil,err end
            return state
        end
    end
    return nil,"Select an existing character."
end
return Roster
