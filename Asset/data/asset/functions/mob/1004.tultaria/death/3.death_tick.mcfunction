#> asset:mob/1004.tultaria/death/3.death_tick
#
#
#
# @within function
#   asset:mob/1004.tultaria/death/2.death
#   asset:mob/1004.tultaria/rejoin_process
#   asset:mob/1004.tultaria/death/3.death_tick

# ファンクション
    execute as @e[type=armor_stand,tag=RW.DeathAnimation] at @s run function asset:mob/1004.tultaria/death/4.main

# ループ
    execute if entity @e[type=armor_stand,tag=RW.DeathAnimation] run schedule function asset:mob/1004.tultaria/death/3.death_tick 1t