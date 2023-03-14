#> asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity
#
# 視点先のentityにタグを付与します。
#
# @within function
#   asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity
#   asset:artifact/0001.book_of_all-seeing/trigger/2.check_condition

# 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0
# |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
# |<==================|
# |-------------------|
# |==================>|-------------------|
#                    |-|

execute positioned ~-1 ~-1 ~-1 as @e[type=#lib:living,type=!player,tag=!Object,tag=!Uninterferable,tag=!Projectile,tag=!Npc,dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 if entity @s[dx=0,dy=0,dz=0] run tag @s add 01.Target

execute unless entity @e[type=#lib:living,type=!player,tag=01.Target,distance=..2] positioned ^ ^ ^0.15 if entity @s[distance=..30] if block ~ ~ ~ #lib:no_collision run function asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity