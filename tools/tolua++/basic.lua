
_is_functions = _is_functions or {}
_to_functions = _to_functions or {}
_push_functions = _push_functions or {}

local CCObjectTypes = {
    "CCAccelAmplitude",
    "CCAccelDeccelAmplitude",
    "CCAction",
    "CCActionCamera",
    "CCActionEase",
    "CCActionInstant",
    "CCActionInterval",
    "CCActionManager",
    "CCAnimate",
    "CCAnimation",
    "CCAnimationCache",
    "CCAnimationCache",
    "CCArray",
    "CCAsyncObject",
    "CCAtlasNode",
    "CCAutoreleasePool",
    "CCBezierBy",
    "CCBezierTo",
    "CCBlink",
    "CCBMFontConfiguration",
    "CCCallFunc",
    "CCCallFuncN",
    "CCCallFuncND",
    "CCCallFuncO",
    "CCCamera",
    "CCConfiguration",
    "CCData",
    "CCDeccelAmplitude",
    "CCDelayTime",
    "CCDirector",
    "CCDisplayLinkDirector",
    "CCEaseBackIn",
    "CCEaseBackInOut",
    "CCEaseBackOut",
    "CCEaseBounce",
    "CCEaseElastic",
    "CCEaseExponentialIn",
    "CCEaseExponentialInOut",
    "CCEaseExponentialOut",
    "CCEaseRateAction",
    "CCEaseSineIn",
    "CCEaseSineInOut",
    "CCEaseSineOut",
    "CCEvent",
    "CCFadeIn",
    "CCFadeOut",
    "CCFadeTo",
    "CCFiniteTimeAction",
    "CCFlipX",
    "CCFlipY",
    "CCGrabber",
    "CCGrid3D",
    "CCGridAction",
    "CCHide",
    "CCJumpBy",
    "CCJumpTo",
    "CCKeypadDispatcher",
    "CCKeypadHandler",
    "CCLabelAtlas",
    "CCLabelBMFont",
    "CCLabelTTF",
    "CCLayer",
    "CCLayerColor",
    "CCLayerGradient",
    "CCLayerMultiplex",
    "CCMenu",
    "CCMenuItem",
    "CCMenuItemAtlasFont",
    "CCMenuItemFont",
    "CCMenuItemImage",
    "CCMenuItemLabel",
    "CCMenuItemSprite",
    "CCMenuItemToggle",
    "CCMotionStreak",
    "CCMoveBy",
    "CCMoveTo",
    "CCMutableArray",
    "CCMutableDictionary",
    "CCNode",
    "CCObject",
    "CCOrbitCamera",
    "CCParallaxNode",
    "CCParticleSystem",
    "CCParticleSystemPoint",
    "CCParticleSystemQuad",
    "CCPlace",
    "CCPointObject",
    "CCProgressFromTo",
    "CCProgressTimer",
    "CCProgressTo",
    "CCProjectionProtocol",
    "CCRenderTexture",
    "CCRepeat",
    "CCRepeatForever",
    "CCReuseGrid",
    "CCReverseTime",
    "CCRibbon",
    "CCRibbonSegment",
    "CCRotateBy",
    "CCRotateTo",
    "CCScaleBy",
    "CCScaleTo",
    "CCScene",
    "CCScheduler",
    "CCSequence",
    "CCSet",
    "CCShow",
    "CCSkewBy",
    "CCSkewTo",
    "CCSpawn",
    "CCSprite",
    "CCSpriteBatchNode",
    "CCSpriteFrame",
    "CCSpriteFrameCache",
    "CCStopGrid",
    "CCString",
    "CCTextFieldTTF",
    "CCTexture2D",
    "CCTextureAtlas",
    "CCTextureCache",
    "CCTexturePVR",
    "CCTiledGrid3D",
    "CCTileMapAtlas",
    "CCTimer",
    "CCTintBy",
    "CCTintTo",
    "CCTMXLayer",
    "CCTMXLayerInfo",
    "CCTMXMapInfo",
    "CCTMXObjectGroup",
    "CCTMXTiledMap",
    "CCTMXTilesetInfo",
    "CCToggleVisibility",
    "CCTouch",
    "CCTouchDispatcher",
    "CCTouchHandler",
    "CCTransitionCrossFade",
    "CCTransitionFade",
    "CCTransitionFadeBL",
    "CCTransitionFadeDown",
    "CCTransitionFadeTR",
    "CCTransitionFadeUp",
    "CCTransitionFlipAngular",
    "CCTransitionFlipX",
    "CCTransitionFlipY",
    "CCTransitionJumpZoom",
    "CCTransitionMoveInB",
    "CCTransitionMoveInL",
    "CCTransitionMoveInR",
    "CCTransitionMoveInT",
    "CCTransitionPageTurn",
    "CCTransitionRadialCCW",
    "CCTransitionRadialCW",
    "CCTransitionRotoZoom",
    "CCTransitionScene",
    "CCTransitionSceneOriented",
    "CCTransitionShrinkGrow",
    "CCTransitionSlideInB",
    "CCTransitionSlideInL",
    "CCTransitionSlideInR",
    "CCTransitionSlideInT",
    "CCTransitionSplitCols",
    "CCTransitionSplitRows",
    "CCTransitionTurnOffTiles",
    "CCTransitionZoomFlipAngular",
    "CCTransitionZoomFlipX",
    "CCTransitionZoomFlipY",
}

-- register CCObject types
for i = 1, #CCObjectTypes do
    _push_functions[CCObjectTypes[i]] = "toluafix_pushusertype_ccobject"
end

-- register LUA_FUNCTION, LUA_TABLE, LUA_HANDLE type
_to_functions["LUA_FUNCTION"] = "toluafix_ref_function"
_is_functions["LUA_FUNCTION"] = "toluafix_isfunction"
_to_functions["LUA_TABLE"] = "toluafix_totable"
_is_functions["LUA_TABLE"] = "toluafix_istable"


function get_property_methods_hook(ptype, name)
    if string.sub(ptype, 1, 2) == "CC" then
        ptype = string.sub(ptype, 3)
    end
    return "get"..ptype, "set"..ptype
end
