local Store = {}
local WorldData=require("app.offline.WorldData")
Store.__index = Store
function Store.new(path, codec)
    return setmetatable({path=path,codec=codec},Store)
end
function Store:valid(s)
    if type(s)~="table" or s.version~=1 or not WorldData.maps[s.map] then return false end
    if type(s.name)~="string" or #s.name<1 or #s.name>64 then return false end
    if s.appearance~=nil then
        if type(s.appearance)~="table" then return false end
        for _,key in ipairs({"byRace","bySex","byFaceShape","byHairColor","bySkinColor","wSTR","wDEX","wINT"}) do
            local v=s.appearance[key]
            if v~=nil and (type(v)~="number" or v~=v or v<0 or v>1000) then return false end
        end
        if s.appearance.byRace and (s.appearance.byRace<1 or s.appearance.byRace>3) then return false end
    end
    for _,k in ipairs({"x","y","level","xp","hp","gold","potions","kills","elapsed"}) do
        if type(s[k])~="number" or s[k]~=s[k] or math.abs(s[k])>100000000 then return false end
    end
    return s.x>=0 and s.y<=0 and s.level>=1 and s.level<=1000 and s.xp>=0
        and s.gold>=0 and s.potions>=0 and s.kills>=0 and s.elapsed>=0
        and s.hp>=0 and s.hp<=100+s.level*20
end
function Store:read(path)
    local f=io.open(path,"rb");if not f then return nil end
    local data=f:read(65537);f:close()
    if not data or #data>65536 then return nil end
    local ok,s=pcall(self.codec.decode,data)
    if ok and self:valid(s) then return s end
end
function Store:load()
    local current=self:read(self.path)
    if current then return current,"loaded" end
    local backup=self:read(self.path..".bak")
    if backup then return backup,"recovered" end
    local f=io.open(self.path,"rb")
    if f then f:close();return nil,"damaged" end
    return nil,"new"
end
function Store:save(s)
    if not self:valid(s) then return false,"Invalid save state" end
    local ok,data=pcall(self.codec.encode,s)
    if not ok then return false,tostring(data) end
    local temp=self.path..".tmp"
    local f,err=io.open(temp,"wb");if not f then return false,err end
    local written,writeErr=f:write(data)
    local closed,closeErr=f:close()
    if not written or not closed then return false,writeErr or closeErr end
    if not self:read(temp) then return false,"Save validation failed" end
    -- Copy the previous valid snapshot without removing the current save.
    if self:read(self.path) then
        local src=io.open(self.path,"rb");local previous=src:read("*a");src:close()
        local backup=io.open(self.path..".bak","wb")
        if backup then backup:write(previous);backup:close() end
    end
    local renamed,renameErr=os.rename(temp,self.path)
    if not renamed then return false,renameErr end
    return true
end
return Store
