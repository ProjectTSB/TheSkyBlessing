#> asset_manager:teleporter/tick/cancel/
#
#
#
# @within function asset_manager:teleporter/tick/player

# storage呼び出し
    function oh_my_dat:please
# リセット
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.41 ~ as @e[type=item_display,tag=TPStar] if score @s TPStarFromUserID = @p[tag=this] UserID run kill @s
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.TPTargetPos
    tag @s remove TeleporterInitializing
    tag @s remove TeleporterInitialized
    tag @s remove TPCancel
