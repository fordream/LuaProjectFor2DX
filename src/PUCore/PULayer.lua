--
-- 此类作用
-- Author: YangHui.Liu
-- Date: 15/1/12
-- @Class: ${PACKAGE_NAME}
--

PULayer = class("PULayer", function() return cc.Layer:create() end)

function PULayer:ctor()

end

function PULayer:dispose()

end

function PULayer:create()
    local s = PULayer.new()
    s:initLayer()
    return s
end

function PULayer:initLayer()
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


function PULayer:onInit()end

