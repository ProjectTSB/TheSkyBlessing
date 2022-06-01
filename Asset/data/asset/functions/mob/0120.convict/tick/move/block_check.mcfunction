#> asset:mob/0120.convict/tick/move/block_check
#
# プレイヤーが直線上にいるか確認
#
# @within function
#        asset:mob/0120.convict/tick/move/conditional_teleport
#        asset:mob/0120.convict/tick/move/block_check

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,dy=0,dz=0] run tag @s add ExistsPassablePlayer
execute unless entity @s[tag=ExistsPassablePlayer] positioned ^ ^ ^0.15 if entity @s[distance=..8] if block ~ ~ ~ #lib:no_collision run function asset:mob/0120.convict/tick/move/block_check