#> world_manager:gimmick/teleporter/active/
#
#
#
# @within function world_manager:gimmick/teleporter/

# 初期化
    execute if entity @s[tag=!TeleporterInit] run function world_manager:gimmick/teleporter/active/init/
# VFX
    execute at @p[tag=this] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:15b,Amplifier:0b,Duration:21,ShowParticles:0b}]}
    execute as @p[tag=this] at @s anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=TPStar,distance=..1.51] if score @s TPStarFromUserID = @p[tag=this] UserID facing entity @s feet positioned as @s run function world_manager:gimmick/teleporter/vfx/star/