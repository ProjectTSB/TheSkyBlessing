#> world_manager:gimmick/teleporter/active/
#
#
#
# @within function world_manager:gimmick/teleporter/

# 接地しているかの取得
    function api:data_get/on_ground
# 初期化
    execute if data storage api: {OnGround:true} if entity @s[tag=!TeleporterInit] run function world_manager:gimmick/teleporter/active/init/
# ジャンプ検知
    execute if data storage api: {OnGround:false} if entity @s[tag=TeleporterInit] run function world_manager:gimmick/teleporter/tp/
# VFX
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:15b,Amplifier:0b,Duration:25,ShowParticles:0b}]}
    execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID facing entity @s feet positioned as @s run function world_manager:gimmick/teleporter/vfx/star/