#> asset:mob/0078.messenger_of_thunder/hurt/3.check_health
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/hurt/2.hurt

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 100
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary
    execute if score $Health Temporary matches ..50 run item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"punch",lvl:3s}]}
    execute if score $Health Temporary matches ..50 run tag @s add 26.HalfHP
    scoreboard players reset $Health Temporary