--
-- 此类作用
-- Author: YangHui.Liu
-- Date: 15/1/12
-- @Class: ${PACKAGE_NAME}
--

PUGameView = class("PUGameView", PULayer)

function PUGameView:ctor()
    cclog("PUGameView:ctor--->")

end

function PUGameView:dispose()
    PUScene.dispose(self)

    cclog("PUGameView:dispose--->")
end

function PUGameView:create()
    local s = PUGameView.new()
    s:initLayer()
    return s
end

function PUGameView:onInit()
self.a = 0

end

