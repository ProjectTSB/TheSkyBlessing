#> asset:mob/0301.sinful_thoughts/death/schedule
#
#
#
# @within function
#        asset:mob/0301.sinful_thoughts/death/2.death
#        asset:mob/0301.sinful_thoughts/death/schedule
#        asset:mob/0301.sinful_thoughts/rejoin_process

# ファンクション
    execute as @e[type=armor_stand,tag=8D.ArmorStandDeath] at @s run function asset:mob/0301.sinful_thoughts/death/3.death_animation

# Schedule
    execute if entity @e[type=armor_stand,tag=8D.ArmorStandDeath,limit=1] run schedule function asset:mob/0301.sinful_thoughts/death/schedule 1t