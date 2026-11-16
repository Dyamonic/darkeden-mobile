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
                    local limit=bounds.width-4
                    if bounds.width>=48 and bounds.width<=80 and object:getY()>bounds.height*.55 then
                        limit=bounds.width-12
                        if text=="Resurrection Scroll" then object:setText("Res. Scroll")
                        elseif text=="Elixir Scroll" then object:setText("Elixir") end
                    end
                    if parent:getTextField()==object or size.width>=limit then
                        constrain(object,(bounds.width-limit)/2,math.max(10,limit))
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
