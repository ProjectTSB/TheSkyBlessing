#> asset:mob/0286.456_dice_entity/tick/event/beam_recursion
#
#
#
# @within function
#   asset:mob/0286.456_dice_entity/tick/event/beam_recursion
#   asset:mob/0286.456_dice_entity/tick/event/shoot_beam

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    particle electric_spark ~ ~ ~ 0 0 0 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0286.456_dice_entity/tick/event/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0286.456_dice_entity/tick/event/beam_recursion
