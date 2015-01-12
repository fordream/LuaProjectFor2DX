require("PUCore.PUScene")
require("PUCore.PULayer")
require("PUCore.PUUtil")

require("MainMenuScene.PUMainMenuScene")
require("MainMenuScene.PUMainMenuUI")

require("GameScene.PUGameScene")
require("GameScene.PUGameView")


cc.SpriteFrameCache:getInstance():addSpriteFrames("atlas/ui_atlas.plist", "atlas/ui_atlas.png")
cc.SpriteFrameCache:getInstance():addSpriteFrames("atlas/main.plist", "atlas/main.png")

WIN_SIZE = cc.Director:getInstance():getVisibleSize()
--create scene 
local gameScene = PUMainMenuScene:create()

if cc.Director:getInstance():getRunningScene() then
    cc.Director:getInstance():replaceScene(gameScene)
else
    cc.Director:getInstance():runWithScene(gameScene)
end

