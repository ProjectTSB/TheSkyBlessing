#> asset:mob/0301.sinful_thoughts/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0301.sinful_thoughts/hurt/1.trigger

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $HealthPercent

# 現在HPの100倍をスコアに
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 100
# なんとなく代入する
    scoreboard players operation $HealthPercent Temporary = $Health Temporary
# 現在HPの％を求める。
    scoreboard players operation $HealthPercent Temporary /= @s 8D.HealthMax

# VFX
    playsound minecraft:entity.generic.hurt hostile @a ~ ~ ~ 1 0.7

# タグを消す
    tag @s remove 8D.HPless75per
    tag @s remove 8D.HPless30per

# タグ付与w
# 75%以下
    execute if score $HealthPercent Temporary matches ..75 run tag @s add 8D.HPless75per
# HP30%以下
    execute if score $HealthPercent Temporary matches ..30 run tag @s add 8D.HPless30per

# リセット
    scoreboard players reset $Health
    scoreboard players reset $HealthPercent