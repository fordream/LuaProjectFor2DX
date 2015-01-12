--
-- 此类作用
-- Author: YangHui.Liu
-- Date: 15/1/11
-- @Class: ${PACKAGE_NAME}
--

PUGameScene = class("PUGameScene", PUScene)

function PUGameScene:ctor()
    cclog("PUGameScene:ctor--->")

end

function PUGameScene:dispose()
    PUScene.dispose(self)


    cclog("PUGameScene:dispose--->")
end

function PUGameScene:create()
    local s = PUGameScene.new()
    s:initScene()
    return s
end

function PUGameScene:onInit()
    local bgColor = cc.LayerColor:create(cc.c4b(40, 255, 0, 255), WIN_SIZE.width, WIN_SIZE.height)
    self:addChild(bgColor)

    local gameView = PUGameView:create()
    self:addChild(gameView)
end

