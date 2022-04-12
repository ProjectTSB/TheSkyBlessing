#> asset:mob/0151.recombined/attack/3.scheduleloop
#
#
#
# @within function
#   asset:mob/0151.recombined/attack/2.attack
#   asset:mob/0151.recombined/attack/3.scheduleloop
#   asset:mob/0151.recombined/rejoin_process

# 発動中
    execute as @a[tag=25.DefDown] at @s run function asset:mob/0151.recombined/attack/4.def_down

# ループ
    execute if entity @a[tag=25.DefDown] run schedule function asset:mob/0151.recombined/attack/3.scheduleloop 1t