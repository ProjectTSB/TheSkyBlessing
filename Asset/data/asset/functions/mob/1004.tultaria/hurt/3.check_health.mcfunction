#> asset:mob/1004.tultaria/hurt/3.check_health
#
#
#
# @within function asset:mob/1004.tultaria/hurt/2.hurt

#> private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 現在体力を割合で出す
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 10000
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# 75%以下
    execute if score $Health Temporary matches ..75 run scoreboard players set @s[scores={RW.Phase=1}] RW.Tick 0
    execute if score $Health Temporary matches ..75 run tag @s[scores={RW.Phase=1}] add RW.HPless75per
# HP50%以下
    execute if score $Health Temporary matches ..50 run scoreboard players set @s[scores={RW.Phase=2}] RW.Tick 0
    execute if score $Health Temporary matches ..50 run tag @s remove RW.HPless50per
    execute if score $Health Temporary matches ..50 run tag @s[scores={RW.Phase=2}] add RW.HPless50per
# HP40%以下
    #execute if score $Health Temporary matches ..40 run tag @s add RW.HPless40per
# HP30%以下
    #execute if score $Health Temporary matches ..30 run tag @s add RW.HPless30per

# リセット
    scoreboard players reset $Health
    scoreboard players reset $MaxHealth