#> asset_manager:teleporter/tick/tp/find_target_star
#
#
#
# @within function
#   asset_manager:teleporter/tick/tp/
#   asset_manager:teleporter/tick/tp/find_target_star

# 付近に星がいる場合
    execute as @e[type=item_display,tag=TPStar.Active,distance=..0.1,limit=1] run function oh_my_dat:please
    execute if entity @e[type=item_display,tag=TPStar.Active,distance=..0.1,limit=1] run data modify storage asset:teleporter TargetPos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos
# 居ない場合の再帰
    execute unless data storage asset:teleporter TargetPos positioned ^ ^ ^0.05 if entity @s[distance=..2.5] run function asset_manager:teleporter/tick/tp/find_target_star
