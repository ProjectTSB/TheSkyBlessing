#> asset_manager:teleporter/active
#
#
#
# @within function asset_manager:teleporter/

# 接地しているかの取得
    function api:data_get/on_ground
# 初期化
    execute if data storage api: {OnGround:true} if entity @s[tag=!TeleporterInit] run function asset_manager:teleporter/star_init/
# ジャンプ検知
    execute if data storage api: {OnGround:false} if entity @s[tag=TeleporterInit] run function asset_manager:teleporter/tp/
# VFX
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:15b,Amplifier:0b,Duration:25,ShowParticles:0b}]}
    execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID facing entity @s feet positioned as @s run function asset_manager:teleporter/vfx/star/