#> world_manager:gimmick/teleporter/cancelled
#
#
#
# @within function world_manager:gimmick/teleporter/

# TODO このままだと他要因の盲目まで消えるのでどうにかする
# リセット
    execute as @p[tag=this] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ as @e[type=marker,tag=TPStar,distance=..1.51] if score @s TPStarFromUserID = @p[tag=this] UserID run kill @s
    tag @s remove TeleporterInit