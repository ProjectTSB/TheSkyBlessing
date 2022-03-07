#> asset:mob/0262.frestchika/death/schedule
#
#
#
# @within function
#        asset:mob/0262.frestchika/death/2.death
#        asset:mob/0262.frestchika/death/schedule

# ファンクション
    execute as @e[type=armor_stand,tag=7A.ArmorStandDeath] at @s run function asset:mob/0262.frestchika/death/3.death_animation

# 再起
    execute if entity @e[type=armor_stand,tag=7A.ArmorStandDeath] run schedule function asset:mob/0262.frestchika/death/schedule 1t