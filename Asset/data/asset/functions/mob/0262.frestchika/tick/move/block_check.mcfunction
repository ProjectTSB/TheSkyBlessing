#> asset:mob/0262.frestchika/tick/move/block_check
#
# プレイヤーが直線上にいるか確認
#
# @within function
#        asset:mob/0262.frestchika/tick/move/teleport_check
#        asset:mob/0262.frestchika/tick/move/block_check

execute positioned ~-1 ~-1 ~-1 if entity @p[dx=0,dy=0,dz=0] run tag @s add PlayerCheck
execute unless entity @s[tag=PlayerCheck] positioned ^ ^ ^0.15 if entity @s[distance=..8] if block ~ ~ ~ #lib:no_collision run function asset:mob/0262.frestchika/tick/move/block_check