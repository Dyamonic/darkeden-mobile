-- Keep the original typefaces and fit English labels inside existing controls.
local EnglishUI={}
local function textField(object)
    local kind=object and tolua.type(object)
    return kind=="fgui.GTextField" or kind=="fgui.GBasicTextField" or kind=="fgui.GRichTextField"
end
local function left(object)
    local x=object:getX()
    if object:isPivotAsAnchor() then x=x-object:getSize().width*object:getPivot().x end
    return x
end
local function constrain(object,x,width)
    if width<8 then return end
    local size=object:getSize()
    -- Clear native shrink state so a later shorter label becomes readable again.
    object:setAutoSize(fgui.AutoSizeType.NONE)
    object:setSize(width,size.height,true)
    object:setX(x+(object:isPivotAsAnchor() and width*object:getPivot().x or 0))
    object:applyTextFormat()
    object:setAutoSize(fgui.AutoSizeType.SHRINK)
end
function EnglishUI.fitRow(row)
    if not row or not row.getChild then return end
    local name,value=row:getChild("name"),row:getChild("value")
    if not textField(name) or not textField(value) then return end
    local ns,vs=name:getSize(),value:getSize()
    if ns.height<12 or vs.height<12 or ns.height>48 or vs.height>48 or math.abs(name:getY()-value:getY())>24 then return end
    local nx,vx=left(name),left(value)
    if vx<=nx+12 then return end
    local caption=name:getText():lower()
    if caption=="experience" then name:setText("EXP")
    elseif caption=="attribute point" or caption=="attribute points" then name:setText("Points") end
    -- Reset the caption's readable size before fitting. A previous long label
    -- may have left the native text renderer at its smaller shrink scale.
    name:setFontSize(math.floor(ns.height*.85))
    name:setSingleLine(true);value:setSingleLine(true)
    local right=row:getSize().width-2
    local nameRight=vx-5
    for i=1,5 do
        local bg=row:getChild("bg"..i)
        if bg then
            local edge=left(bg)+bg:getSize().width-3
            if vx>=left(bg)-2 and vx<edge then right=math.min(right,edge) end
            if left(bg)>nx+12 then nameRight=math.min(nameRight,left(bg)-5) end
            break
        end
    end
    constrain(name,nx,nameRight-nx)
    constrain(value,vx,right-vx)
end
function EnglishUI.fitHeader(object,rightInset)
    if not textField(object) then return end
    local parent=object:getParent()
    if not parent then return end
    object:setSingleLine(true)
    constrain(object,4,parent:getSize().width-(rightInset or 4)-4)
end
-- Explicit row layouts keep English prose out of native input/dropdown areas.
local function label(object,text,x,y,width,height,font)
    if not textField(object) then return end
    if text then object:setText(text) end
    object:setPivot(0,0,false)
    object:setPosition(x,y)
    object:setAutoSize(fgui.AutoSizeType.NONE)
    object:setSize(width,height,true)
    object:setFontSize(font or 20)
    object:setSingleLine(true)
    object:applyTextFormat()
    object:setAutoSize(fgui.AutoSizeType.SHRINK)
end
local measuredWidths={}
local function textWidth(text,font)
    local key=font..":"..text
    if not measuredWidths[key] then
        local measured=cc.Label:createWithTTF(text,lt.Constant.FONT_4,font)
        measuredWidths[key]=math.max(8,measured:getContentSize().width+4)
    end
    return measuredWidths[key]
end
local function centerLabel(object,text,center,y,width,height,font,multiline)
    label(object,text,0,y,width,height,font)
    object:setSingleLine(not multiline)
    local natural=textWidth(object:getText(),font)
    constrain(object,center-math.min(width,natural)/2,math.min(width,natural))
    object:setSize(math.min(width,natural),height,true)
end
function EnglishUI.fitCountdown(object)
    centerLabel(object,nil,0,-66,140,56,42)
end
function EnglishUI.fitStateMapTile(tile)
    local title=tile:getChild("name")
    if not title then return end
    local size=tile:getSize()
    local caption=title:getText()
    local directions={Northwest="NW",Northeast="NE",Southwest="SW",Southeast="SE",North="N",South="S",East="E",West="W"}
    for full,short in pairs(directions) do
        local base=caption:match("^(.-) "..full.."$")
        if base then caption=base.."\n"..short;break end
    end
    -- Keep two readable lines inside the tile, below the level badge.
    label(title,caption,4,size.height-37,size.width-8,34,size.width<90 and 12 or 14)
    title:setSingleLine(false)
    local level=tile:getChild("lvl")
    if level then
        local text=level:getText():gsub("Lv(%d+)%-Lv(%d+)","Lv %1-%2")
        label(level,text,3,1,math.min(size.width-6,84),18,13)
    end
end
function EnglishUI.fitStateMap(window)
    local captions={"Your location","Party members","Quest markers","Dungeon entries","Zone names","Level range"}
    for i,text in ipairs(captions) do
        local object=window:getChild("n"..(73+i))
        if object then
            local y=object:getY()-(object:isPivotAsAnchor() and object:getSize().height*object:getPivot().y or 0)
            label(object,text,275,y,145,26,18)
        end
    end
    for name,text in pairs({curMap="Local Map",underground="Underground",ground="Surface"}) do
        local button=window:getChild(name)
        if button then
            button:setX(790);button:setSize(150,42);button:setText(text)
            if button:getTextField() then button:getTextField():setFontSize(20) end
            EnglishUI.fit(button)
        end
    end
    local title=window:getChild("n88")
    if title then centerLabel(title,title:getText():gsub(" %(state%)$"," Region"),566,57,620,30,24) end
end
function EnglishUI.fitSetting(component,meta)
    local kind,index=meta:getSettingClass(),meta:getIdx()
    local width=component:getSize().width
    local title=component:getChild("text1")
    local percent=component:getChild("text_percent")
    if kind==1 then
        local captions={[1]="Auto-heal below",[2]="Auto-heal below",[3]="Auto-heal below",[4]="Restore MP below",[5]="Restore spirit below"}
        label(title,captions[index],36,8,width-152,26)
        label(percent,nil,width-100,8,88,26)
        for _,child in ipairs(component:getChildren()) do
            if tolua.type(child)=="fgui.GImage" and child~=component:getChild("bgInput") then
                child:setPosition(width-104,8);child:setSize(96,26)
            end
        end
        -- Give potion names a wider selector and keep its arrow/hit target aligned.
        local combo=component:getChild("comboBox")
        combo:setPosition(88,92);combo:setSize(180,22)
        for _,child in ipairs(combo:getChildren()) do
            if tolua.type(child)=="fgui.GImage" then child:setSize(156,22) end
        end
        combo:getChild("loader_choose1"):setX(158)
        combo:getChild("loader_choose2"):setX(180)
        combo:getChild("btn_choose"):setSize(180,41)
        label(combo:getChild("text_choose"),nil,2,0,152,22,18)
        label(component:getChild("text2"),"Use",36,90,48,26,18)
        component:getChild("btn_buy"):setPosition(282,78)
        component:getChild("btn_buy"):setSize(width-282,46)
        label(component:getChild("text3"),"Refill",318,90,47,26,18)
        component:getChild("bgInput"):setPosition(width-68,92)
    elseif kind==2 then
        label(title,"Nearby players",8,10,width-132,26)
        label(percent,nil,width-104,10,90,26)
        for _,child in ipairs(component:getChildren()) do
            if tolua.type(child)=="fgui.GImage" then child:setPosition(width-108,10);child:setSize(98,26) end
        end
        label(component:getChild("text2"),"",0,0,8,26)
    elseif kind==3 then
        local captions={
            [8]="Confirm before discarding items",[9]="Allow Soul Chain tracking",
            [10]="Transparent inventory",[11]="Transparent equipment",
            [12]="Transparent character window",[13]="Transparent quest window",
            [14]="Transparent party window",[15]="Transparent minimap",
            [16]="Transparent chat",[17]="Transparent quick slots",
            [22]="Auto-equip items",[25]="High performance mode",
            [26]="Auto-loot during auto combat",[27]="Show network latency"}
        label(title,captions[index],36,6,width-48,28)
    else
        local captions={[18]="Opacity",[19]="Sound effects",[20]="Music",[21]="Field of view",[23]="Left edge padding",[24]="Right edge padding"}
        local x=(kind==5 and 36 or 8)
        label(title,captions[index],x,10,width-x-108,26)
        label(percent,nil,width-98,10,86,26)
    end
end
function EnglishUI.fitHelpMenu(object)
    local title=object:getChild("text_choose")
    local arrow=object:getChild("btn_choose")
    if title and arrow then
        label(title,nil,10,8,object:getSize().width-48,28,18)
    end
end
function EnglishUI.fitHelpItem(object)
    label(object:getChild("title"),nil,10,8,object:getSize().width-20,28,18)
end
function EnglishUI.fitPotionChoice(object)
    object:setSize(220,object:getSize().height)
    for _,child in ipairs(object:getChildren()) do
        local size=child:getSize()
        if not textField(child) and size.width>=80 and size.height>=20 then
            if tolua.type(child)=="fgui.GLoader" then
                child:setAutoSize(false)
                child:setFill(fgui.LoaderFillType.SCALE_FREE)
            end
            child:setSize(220,size.height,true)
            child:setX(child:isPivotAsAnchor() and 220*child:getPivot().x or 0)
        end
    end
    label(object:getChild("title"),nil,10,2,200,object:getSize().height-4,18)
end
function EnglishUI.fitRevive(object)
    local title=object:getChild("label_title")
    local timer=object:getChild("label_last")
    if title and timer then
        -- This original component has a zero-sized origin at screen center.
        -- Its children intentionally use negative coordinates around that origin.
        centerLabel(title,nil,0,-100,440,30,24)
        EnglishUI.fitCountdown(timer)
        local state=object:getChild("label_state")
        centerLabel(state,nil,0,164,400,28,20)
        -- Item-based revival has a full item icon below the method labels.
        object:getChild("node_item"):setY(174)
        object:getChild("img_item"):setY(174)
        local button=object:getChild("btn_revive")
        if button then button:setY(216);EnglishUI.fit(button) end
        local list=object:getChild("list_revive")
        list:setSize(list:getSize().width,90)
    end
end
function EnglishUI.fitReviveItem(object)
    local title=object:getChild("title")
    local caption=title:getText()
    if caption=="Resurrection Scroll" then caption="Revive\nScroll"
    elseif caption=="Elixir Scroll" then caption="Elixir\nScroll" end
    centerLabel(title,caption,object:getSize().width/2,46,object:getSize().width-4,40,16,true)
    object:setSize(object:getSize().width,90)
end
function EnglishUI.fit(object)
    if not object then return end
    local kind=tolua.type(object)
    if kind=="fgui.GTextField" or kind=="fgui.GBasicTextField" or kind=="fgui.GRichTextField" then
        local size=object:getSize()
        local text=object:getText() or ""
        if #text>0 and text:find('%a') and not text:find('[\228-\233][\128-\191][\128-\191]') then
            local caption=text:gsub('[\r\n]',' ')
            if size.width<60 and size.height>size.width*1.8 and #caption<24 and caption:match('^[%a ]+$') and object.getX then
                object:setText(caption)
                local x,y=object:getX(),object:getY()
                local pivot=object:getPivot()
                local anchored=object:isPivotAsAnchor()
                x=x+(anchored and (0.5-pivot.x) or 0.5)*size.width
                y=y+(anchored and (0.5-pivot.y) or 0.5)*size.height
                object:setPivot(0.5,0.5,true)
                object:setSize(size.height,size.width)
                object:setPosition(x,y)
                object:setRotation(90)
                if object.setSingleLine then object:setSingleLine(true) end
                object:setAutoSize(fgui.AutoSizeType.SHRINK)
            elseif size.width>20 and size.height<50 then
                local parent=object:getParent()
                if parent and tolua.type(parent)=="fgui.GButton" then
                    local bounds=parent:getSize()
                    local limit=bounds.width-20
                    if bounds.width>=48 and bounds.width<=80 and object:getY()>bounds.height*.55 then
                        limit=bounds.width-12
                        if text=="Resurrection Scroll" then object:setText("Res. Scroll")
                        elseif text=="Elixir Scroll" then object:setText("Elixir") end
                    end
                    if parent:getTextField()==object or size.width>=limit then
                        local width=math.min(math.max(10,limit),textWidth(object:getText(),object:getFontSize()))
                        constrain(object,(bounds.width-width)/2,width)
                    end
                end
                object:setAutoSize(fgui.AutoSizeType.SHRINK)
            end
        end
    end
    if object.getChildren then
        for _,child in ipairs(object:getChildren()) do EnglishUI.fit(child) end
    end
    EnglishUI.fitRow(object)
    if object.getChild and object:getChild("label_last") and object:getChild("list_revive") then EnglishUI.fitRevive(object) end
end
function EnglishUI.install()
    if EnglishUI.installed then return end
    EnglishUI.installed=true
    for _,name in ipairs({"createObject","createObjectFromURL"}) do
        local create=fgui.UIPackage[name]
        fgui.UIPackage[name]=function(...)
            local object=create(...)
            EnglishUI.fit(object)
            return object
        end
    end
end
return EnglishUI
