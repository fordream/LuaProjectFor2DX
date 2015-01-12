PUMainMenuScene = class("PUMainMenuScene", PUScene)

function PUMainMenuScene:ctor()
    cclog("PUMainMenuScene:ctor--->")

end

function PUMainMenuScene:dispose()
    PUScene.dispose(self)

    cclog("PUMainMenuScene:dispose--->")
end

function PUMainMenuScene:create()
    local s = PUMainMenuScene.new()
    s:initScene()
    return s
end

function PUMainMenuScene:onInit()
    local bgColor = cc.LayerColor:create(cc.c4b(0, 255, 0, 255), WIN_SIZE.width, WIN_SIZE.height)
    self:addChild(bgColor)

    local logo = cc.Sprite:createWithSpriteFrameName("logo.png")
    logo:setPosition(WIN_SIZE.width * .5, WIN_SIZE.height * .8)
    self:addChild(logo)

    local mainMenuUI = PUMainMenuUI:create()
    self:addChild(mainMenuUI)
end