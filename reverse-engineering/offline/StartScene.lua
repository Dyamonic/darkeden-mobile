-- Local entry screen using the bundled updater artwork and launcher button.
local StartScene={}
function StartScene.create()
    local scene=display.newScene("OfflineStartScene")
    local bg=display.newSprite("starter/bg.png")
    local size=bg:getContentSize()
    bg:setScale(math.max(display.width/size.width,display.height/size.height))
    bg:setPosition(display.cx,display.cy)
    scene:addChild(bg)

    -- Reuse the original launcher button asset with an English title.
    local button=ccui.Button:create("launcher/start_btn.png","launcher/start_btn.png")
    button:setTitleText("Start")
    button:setTitleFontName("font/fangzheng.ttf")
    button:setTitleFontSize(28)
    button:setTitleColor(cc.c3b(255,225,160))
    button:setPosition(display.cx,display.height*0.20)
    button:setScale(1.35)
    scene:addChild(button,1)
    local starting=false
    button:addClickEventListener(function()
        if starting then return end
        starting=true
        button:setTouchEnabled(false)
        require("cocos.framework.scheduler").performWithDelayGlobal(function()
            local ok,err=xpcall(function()
                local roleScene=require("app.offline.Bridge").create()
                cc.Director:getInstance():replaceScene(roleScene)
            end,__G__TRACKBACK__)
            if not ok then
                starting=false;button:setTouchEnabled(true)
                print(err)
            end
        end,0)
    end)
    return scene
end
return StartScene
