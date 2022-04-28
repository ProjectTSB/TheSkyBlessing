#> asset:mob/0237.lunatic_mage/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0237.lunatic_mage/hurt/1.trigger

#> Priuvate
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 演出
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.7

# 現在体力を割合で出す
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 1.0
