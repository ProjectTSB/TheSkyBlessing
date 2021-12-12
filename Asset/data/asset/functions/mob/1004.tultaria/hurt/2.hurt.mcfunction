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
    tag @s remove RW.HPless75
    tag @s remove RW.HPless50

# タグ付与
# HP50%より上75%未満
    execute if score $HealthPercent Temporary matches 49..74 run tag @s add RW.HPless75
    execute if score $HealthPercent Temporary matches 49..74 run say 75
# HP50%以下
    execute if score $HealthPercent Temporary matches ..50 run tag @s add RW.HPless50
    execute if score $HealthPercent Temporary matches ..50 run say 50

# リセット
    scoreboard players reset $Health
    scoreboard players reset $HealthPercent

say aa