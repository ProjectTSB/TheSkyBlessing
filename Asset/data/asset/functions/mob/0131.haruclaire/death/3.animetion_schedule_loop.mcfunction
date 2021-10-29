#> asset:mob/0131.haruclaire/death/3.animetion_schedule_loop
#
#
#
# @within function
#   asset:mob/0131.haruclaire/death/2.death
#   asset:mob/0131.haruclaire/death/3.animetion_schedule_loop

# ファンクション
    execute as @e[type=armor_stand,tag=3N.ArmorStandDeath] at @s run function asset:mob/0131.haruclaire/death/4.animetion_main

# ループ
    execute if entity @e[type=armor_stand,tag=3N.ArmorStandDeath] run schedule function asset:mob/0131.haruclaire/death/3.animetion_schedule_loop 1t replace