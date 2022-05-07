#> asset:mob/0078.messenger_of_thunder/hurt/3.check_health
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/hurt/2.hurt

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 体力が半分以下かどうかを検知する
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 10000
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary
    execute if score $Health Temporary matches ..50 run item replace entity @s weapon.mainhand with bow{CustomModelData:20188,Enchantments:[{id:"punch",lvl:3s}]}
    execute if score $Health Temporary matches ..50 run tag @s add 26.HPLess50Per
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary