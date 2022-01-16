#> world_manager:gimmick/teleporter/cancelled
#
#
#
# @within function world_manager:gimmick/teleporter/

# TODO このままだと他要因の盲目まで消えるのでどうにかする
# リセット
    effect clear @s blindness
    execute as @e[type=marker,tag=TPStar,distance=..1.5] if score @s TPStarFromUserID = @p[tag=this] UserID run kill @s
    tag @s remove TeleporterInit