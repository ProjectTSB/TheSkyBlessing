#> asset:mob/0104.mad_scientist/hurt/4.health_check
#
# 体力をチェックする
#
# @within function asset:mob/0104.mad_scientist/hurt/2.hurt

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 体力チェック
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 100
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary
    execute if score $Health Temporary matches ..50 run tag @s add 2W.HPless50Per
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary