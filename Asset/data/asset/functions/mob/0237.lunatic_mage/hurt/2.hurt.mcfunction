#> asset:mob/0237.lunatic_mage/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0237.lunatic_mage/hurt/1.trigger

# 演出
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.7

# 現在体力を数値化する 300以下でTagを自身に付与
    execute if entity @s[tag=!6J.ElementalKill] store result score @s 6J.Health run data get entity @s Health 1.0
    execute if entity @s[tag=!6J.ElementalKill] if score @s 6J.Health matches ..300 run tag @s add 6J.ElementalKill