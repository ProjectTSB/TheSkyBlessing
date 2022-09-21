#> asset:mob/1017.phase2_bullethell_shot/summon/4.laser
#
#
#
# @within function
#   asset:mob/1017.phase2_bullethell_shot/summon/3.init
#   asset:mob/1017.phase2_bullethell_shot/summon/4.laser

# パーチクル
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 0 force @a[distance=..10]

# 目の前にずらして再帰
    execute if entity @s[distance=..16] positioned ^ ^ ^1 run function asset:mob/1017.phase2_bullethell_shot/summon/4.laser