#> asset:mob/0022.red_knight/hurt/3.check_health
#
#
#
# @within  asset:mob/0022.red_knight/hurt/2.hurt

#> private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 現在体力を割合で出す
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 10000
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# HP50%以下
    execute if score $Health Temporary matches ..5000 run scoreboard players set @s[scores={M.Phase=1}] M.Tick 0
    execute if score $Health Temporary matches ..5000 run tag @s[scores={M.Phase=1}] add M.HPless50per

tellraw @a [{"text":"score: "},{"score":{"objective":"Temporary","name":"$Health"}}]

# リセット
    scoreboard players reset $Health
    scoreboard players reset $MaxHealth
