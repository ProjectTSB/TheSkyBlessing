#> asset:mob/0240.lunatic_laser/tick/4.recursive
#
# レーザーの再帰処理
#
# @within function
#   asset:mob/0240.lunatic_laser/tick/3.shoot
#   asset:mob/0240.lunatic_laser/tick/4.recursive

# 演出
    particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0.01 2 normal @a
    particle end_rod ^ ^ ^0.5 0.2 0.2 0.2 0.01 4 normal @a

# 近くのプレイヤーにTagを付与
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add Hit

# 再帰
    execute if entity @s[distance=..7] positioned ^ ^ ^0.5 run function asset:mob/0240.lunatic_laser/tick/4.recursive