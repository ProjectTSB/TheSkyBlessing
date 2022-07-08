#> asset:mob/0237.lunatic_mage/hurt/3.check_health
#
# 体力の割合を検知する
#
# @within function asset:mob/0237.lunatic_mage/hurt/2.hurt

#> Priuvate
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 現在体力を割合で出す
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 10000
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# 40%以下でTagを付与
    execute if score $Health Temporary matches ..40 run tag @s add 6L.HealthLess40Per

# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary