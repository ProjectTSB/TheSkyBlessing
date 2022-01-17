#> world_manager:gimmick/teleporter/active/
#
#
#
# @within function world_manager:gimmick/teleporter/

# 初期化
    execute if entity @s[tag=!TeleporterInit] run function world_manager:gimmick/teleporter/active/init/
# VFX
    execute as @p[tag=this] at @s anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=TPStar,distance=..1.51] if score @s TPStarFromUserID = @p[tag=this] UserID at @s run function world_manager:gimmick/teleporter/vfx/star