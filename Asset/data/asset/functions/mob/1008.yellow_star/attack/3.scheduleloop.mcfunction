#> asset:mob/1008.yellow_star/attack/3.scheduleloop
#
#
#
# @within function
#   asset:mob/1008.yellow_star/attack/2.attack
#   asset:mob/1008.yellow_star/attack/3.scheduleloop
#   asset:mob/1008.yellow_star/rejoin_process

# 効果
    execute as @a[scores={S0.Time=1..}] at @s run function asset:mob/1008.yellow_star/attack/4.def_down

# Scheduleloop
    execute if entity @a[scores={S0.Time=1..}] run schedule function asset:mob/1008.yellow_star/attack/3.scheduleloop 1t replace
