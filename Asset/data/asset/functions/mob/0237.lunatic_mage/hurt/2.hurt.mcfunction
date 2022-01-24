#> asset:mob/0237.lunatic_mage/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0237.lunatic_mage/hurt/1.trigger

# 演出
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.7

# 現在体力を数値化する 300以下で技選択時にTagを自身に付与
    execute store result score @s 6J.Health run data get entity @s AbsorptionAmount 1.0
