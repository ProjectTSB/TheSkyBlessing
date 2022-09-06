#> asset:mob/1004.tultaria/hurt/3.check_health
#
#
#
# @within function asset:mob/1004.tultaria/hurt/2.hurt

#> private
# @private
    #declare score_holder $Health
    #declare score_holder $HealthPercent

# 現在HPの100倍をスコアに
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 100
# なんとなく代入する
    scoreboard players operation $HealthPercent Temporary = $Health Temporary
# 現在HPの％を求める。
    scoreboard players operation $HealthPercent Temporary /= @s RW.HealthMax

# 75%以下
    execute if score $HealthPercent Temporary matches ..75 run scoreboard players set @s[tag=!RW.Phase2] RW.Tick 0
    execute if score $HealthPercent Temporary matches ..75 run tag @s[tag=!RW.Phase2] add RW.HPless75per
# HP50%以下
    execute if score $HealthPercent Temporary matches ..50 run tag @s add RW.HPless50per
# HP40%以下
    execute if score $HealthPercent Temporary matches ..40 run tag @s add RW.HPless40per
# HP30%以下
    execute if score $HealthPercent Temporary matches ..30 run tag @s add RW.HPless30per

# リセット
    scoreboard players reset $Health
    scoreboard players reset $HealthPercent