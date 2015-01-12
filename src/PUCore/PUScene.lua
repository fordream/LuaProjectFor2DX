
PUScene = class("PUScene", function() return cc.Scene:create() end)

function PUScene:ctor()

end

function PUScene:dispose()

end

function PUScene:create()
    local s = PUScene.new()
    s:initScene()
    return s
end

function PUScene:initScene()
    -- super to do something
    -- your code here ...
    local function onNodeEvent(event)
        if "exit" == event then
            self:dispose()
        end
    end
    self:registerScriptHandler(onNodeEvent)

    self:onInit()
end


function PUScene:onInit()end