cc.FileUtils:getInstance():setPopupNotify(false)
require "config"
require "cocos.init"

local function boot()
    _G_OFFLINE = true
    _G_STARTER_MODE = true
    _G_GAME_INFO = {type = "win32"}
    local fu = cc.FileUtils:getInstance()
    fu:setSearchPaths({"win32/res/", "win32/", "res/", ""})
    for _, file in ipairs({"protobuf.pk", "bil2.pk", "emag.pk"}) do
        cc.LuaLoadChunksFromZIP(fu:fullPathForFilename(file))
    end
    package.loaded.game = nil
    require "app.Init"
    require "app.log.Log"
    SKIP_UPT = true
    _G_TL_URL, _G_CDN_URL, _G_API_CENTER_FLAG = nil, nil, nil
    __G__TRACKBACK__=function(e)
        local trace=debug.traceback(tostring(e),2)
        local f=io.open(device.writablePath.."offline-error.txt","w")
        if f then f:write(trace);f:close() end
        local history=io.open(device.writablePath.."offline-errors.log","a")
        if history then history:write(trace.."\n\n");history:close() end
        print("OFFLINE ERROR "..trace)
        return trace
    end
    require("app.offline.EnglishUI").install()
    local scene = require("app.offline.StartScene").create()
    local director=cc.Director:getInstance()
    if director:getRunningScene() then director:replaceScene(scene) else director:runWithScene(scene) end
end

local ok, err = xpcall(boot, function(e) return debug.traceback(tostring(e), 2) end)
if not ok then
    print("OFFLINE ERROR " .. tostring(err))
    local f = io.open(device.writablePath .. "offline-error.txt", "w")
    if f then f:write(tostring(err)); f:close() end
    local scene = cc.Scene:create()
    local label = cc.Label:createWithSystemFont("Offline startup error. See offline-error.txt\n" .. tostring(err), "Arial", 16)
    label:setDimensions(display.width - 80, display.height - 80)
    label:setPosition(display.cx, display.cy)
    scene:addChild(label)
    local director=cc.Director:getInstance()
    if director:getRunningScene() then director:replaceScene(scene) else director:runWithScene(scene) end
end
