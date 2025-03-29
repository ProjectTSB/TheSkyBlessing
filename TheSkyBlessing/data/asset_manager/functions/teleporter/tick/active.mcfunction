#> asset_manager:teleporter/tick/active
#
#
#
# @within function asset_manager:teleporter/tick/player

# 接地しているかの取得
    function api:data_get/on_ground
# 星: 初期化
    execute if data storage api: {OnGround:true} if entity @s[tag=!TeleporterInitializing,tag=!TeleporterInitialized] run function asset_manager:teleporter/tick/summon_star/init/
# 星: 初期化中
    execute if data storage api: {OnGround:true} if entity @s[tag=TeleporterInitializing] run function asset_manager:teleporter/tick/summon_star/summon/
    execute if data storage api: {OnGround:true} if entity @s[tag=TeleporterInitializing] run function asset_manager:teleporter/tick/summon_star/summon/
# テレポート: 記録
    execute if data storage api: {OnGround: true} unless entity @s[tag=!TeleporterInitializing,tag=!TeleporterInitialized] run function asset_manager:teleporter/tick/tp/find/
# テレポート: 実行
    execute if data storage api: {OnGround:false} unless entity @s[tag=!TeleporterInitializing,tag=!TeleporterInitialized] run function asset_manager:teleporter/tick/tp/move.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.TPTargetPos
# VFX
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"blindness",amplifier:0b,duration:25,show_particles:0b}]}
    execute anchored eyes positioned ^ ^ ^ as @e[type=item_display,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID facing entity @s feet positioned as @s run function asset_manager:teleporter/tick/vfx/star/
