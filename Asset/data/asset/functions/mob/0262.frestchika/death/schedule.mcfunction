#> asset:mob/0262.frestchika/death/schedule
#
#
#
# @within function
#        asset:mob/0262.frestchika/death/2.death
#        asset:mob/0262.frestchika/death/schedule
#        asset:mob/0262.frestchika/rejoin_process
# ファンクション
    execute as @e[type=armor_stand,tag=7A.ArmorStandDeath] at @s run function asset:mob/0262.frestchika/death/3.death_animation

# Schedule
    execute if entity @e[type=armor_stand,tag=7A.ArmorStandDeath,limit=1] run schedule function asset:mob/0262.frestchika/death/schedule 1t