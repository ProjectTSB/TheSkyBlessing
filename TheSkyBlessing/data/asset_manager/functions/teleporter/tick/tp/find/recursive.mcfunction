#> asset_manager:teleporter/tick/tp/find/recursive
#
#
#
# @within function
#   asset_manager:teleporter/tick/tp/find/
#   asset_manager:teleporter/tick/tp/find/recursive

# 付近に星がいる場合
    execute if entity @e[type=item_display,tag=TPStar.Active,distance=..0.07,limit=1] run function asset_manager:teleporter/tick/tp/find/store_pos
# 居ない場合の再帰
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.TPTargetPos positioned ^ ^ ^0.05 if entity @s[distance=..1.6] run return run function asset_manager:teleporter/tick/tp/find/recursive
# 探査が終了しているのでリセット
    kill @s
