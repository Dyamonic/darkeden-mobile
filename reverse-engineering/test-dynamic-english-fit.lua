local ui=assert(loadstring([====[-- Keep the original typefaces and fit English labels inside existing controls.
local EnglishUI={}
EnglishUI.fitted=setmetatable({},{__mode="k"})
function EnglishUI.fit(object)
    if not object then return end
    local kind=tolua.type(object)
    if kind=="fgui.GTextField" or kind=="fgui.GBasicTextField" or kind=="fgui.GRichTextField" then
        local size=object:getSize()
        local text=object:getText() or ""
        if #text>0 and text:find('%a') and not text:find("[\128-\255]") then
            if size.width<60 and size.height>size.width*1.8 and #text<18 and text:match('^[%a ]+$') and object.getX then
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
                    if size.width>=bounds.width-4 then
                        object:setSize(math.max(10,bounds.width-4),size.height)
                        local pivot=object:getPivot()
                        object:setX(2+(object:isPivotAsAnchor() and math.max(10,bounds.width-4)*pivot.x or 0))
                    end
                end
                object:setAutoSize(fgui.AutoSizeType.SHRINK)
            end
        end
        EnglishUI.fitted[object]=true
    end
    if object.getChildren then
        for _,child in ipairs(object:getChildren()) do EnglishUI.fit(child) end
    end
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
    -- List renderers populate their labels after their item is constructed.
    -- Fit those updates too, rather than only the template's placeholder text.
    for _,class in ipairs({fgui.GBasicTextField,fgui.GRichTextField}) do
        local setter=class.setText
        class.setText=function(object,value)
            local unchanged=object:getText()==value
            local result=setter(object,value)
            if EnglishUI.updating or (unchanged and EnglishUI.fitted[object]) then return result end
            EnglishUI.updating=true
            local ok,err=pcall(EnglishUI.fit,object)
            EnglishUI.updating=false
            if not ok then error(err) end
            return result
        end
    end
end
return EnglishUI
]====]))();ui.install()
