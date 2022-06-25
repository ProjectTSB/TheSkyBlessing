#> asset_manager:teleporter/tick/cancel/
#
#
#
# @within function asset_manager:teleporter/tick/player

# リセット
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.41 ~ as @e[type=marker,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID run kill @s
    tag @s remove TeleporterInit
    tag @s remove TPCancel
    tag @s add SuppressUntilDeactive