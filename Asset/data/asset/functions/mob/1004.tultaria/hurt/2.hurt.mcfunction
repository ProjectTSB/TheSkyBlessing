#> asset:mob/1004.tultaria/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/1004.tultaria/hurt/1.trigger
#> private
# @private
    #declare score_holder $Health
    #declare score_holder $HealthPercent

# 現在HPの100倍をスコアに
    execute store result score $Health Temporary run data get entity @s Health 100
# なんとなく代入する
    scoreboard players operation $HealthPercent Temporary = $Health Temporary
# 現在HPの％を求める。
    scoreboard players operation $HealthPercent Temporary /= @s RW.HealthMax

# タグを消す
    tag @s remove RW.HPless75per
    tag @s remove RW.HPless50per

# タグ付与
# 75%以下
    execute if score $HealthPercent Temporary matches ..75 run tag @s add RW.HPless75per
    execute if score $HealthPercent Temporary matches ..75 run say 75
# HP50%以下
    execute if score $HealthPercent Temporary matches ..50 run tag @s add RW.HPless50per
    execute if score $HealthPercent Temporary matches ..50 run say 50
# HP40%以下
    execute if score $HealthPercent Temporary matches ..40 run tag @s add RW.HPless40per
    execute if score $HealthPercent Temporary matches ..40 run say 40
# HP30%以下
    execute if score $HealthPercent Temporary matches ..30 run tag @s add RW.HPless30per
    execute if score $HealthPercent Temporary matches ..30 run say 30

# リセット
    scoreboard players reset $Health
    scoreboard players reset $HealthPercent