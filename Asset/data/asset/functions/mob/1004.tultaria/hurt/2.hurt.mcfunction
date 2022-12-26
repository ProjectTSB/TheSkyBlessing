#> asset:mob/1004.tultaria/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/1004.tultaria/hurt/1.trigger
#> private
# @private
    #declare score_holder $HealthPercent

# HP割合を取得
    function api:mob/get_health_percent
# 代入する
    execute store result score $HealthPercent Temporary run data get storage api: Return.HealthPer 100

# VFX
    playsound minecraft:entity.generic.hurt hostile @a ~ ~ ~ 1 0.7

# タグを消す
    tag @s remove RW.HPless75per
    tag @s remove RW.HPless50per

# タグ付与
# 75%以下
    execute if score $HealthPercent Temporary matches ..75 run tag @s add RW.HPless75per
# HP50%以下
    execute if score $HealthPercent Temporary matches ..50 run tag @s add RW.HPless50per
# HP40%以下
    execute if score $HealthPercent Temporary matches ..40 run tag @s add RW.HPless40per
# HP30%以下
    execute if score $HealthPercent Temporary matches ..30 run tag @s add RW.HPless30per

# リセット
    scoreboard players reset $HealthPercent