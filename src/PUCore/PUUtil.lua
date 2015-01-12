--
-- 此类作用
-- Author: YangHui.Liu
-- Date: 15/1/11
-- @Class: ${PACKAGE_NAME}
--

CREATE_IMAGE_MENU = function(config)
    local menu = cc.Menu:create()
    menu:setPosition(0, 0)

    for k, v in pairs(config) do
        local normalImage = v.normalImage
        local pressImage = v.pressImage or normalImage
        local disableImage = v.disableImage or normalImage
        local callback = v.callback or function() end

        local itemBg1 = cc.Sprite:createWithSpriteFrameName(normalImage)
        local itemBg2 = cc.Sprite:createWithSpriteFrameName(pressImage)
        local itemBg3 = cc.Sprite:createWithSpriteFrameName(disableImage)

        local item = cc.MenuItemSprite:create(itemBg1, itemBg2, itemBg3)
        item:setPosition(v.pos)
        item:registerScriptTapHandler(callback)
        if v.tag then
            item:setTag(v.tag)
        end
        menu:addChild(item)
    end
    return menu
end

