--
-- 此类作用
-- Author: YangHui.Liu
-- Date: 15/1/12
-- @Class: MainMenuScene
--

PUMainMenuUI = class("PUMainMenuUI", PULayer)

function PUMainMenuUI:ctor()
    cclog("PUMainMenuUI:ctor--->")

end

function PUMainMenuUI:dispose()
    PUScene.dispose(self)

    cclog("PUMainMenuUI:dispose--->")
end

function PUMainMenuUI:create()
    local s = PUMainMenuUI.new()
    s:initLayer()
    return s
end

local function createTopBar(self)
    local function itemCallback(tag, sender)

    end
    local menuConfig = {
        {
            normalImage = "button_bubble_small_off.png",
            pressImage = "button_bubble_small_on.png",
            callback = itemCallback,
            pos = cc.p(70, WIN_SIZE.height - 70),
        }
    }
    self:addChild(CREATE_IMAGE_MENU(menuConfig))

end

function PUMainMenuUI:onInit()
    local function startGame(tag, sender)
        cc.Director:getInstance():replaceScene(PUGameScene:create())
    end

    -- start menu
    local menuConfig = {
        {
            normalImage = "button_bubble_big_off.png",
            pressImage = "button_bubble_big_on.png",
            callback = startGame,
            pos = cc.p(WIN_SIZE.width * .5, WIN_SIZE.height * .5),
        }
    }
    self:addChild(CREATE_IMAGE_MENU(menuConfig))

    createTopBar(self)
end
