#> asset:mob/1005.blue_star/attack/3.scheduleloop
#
#
#
# @within function
#       asset:mob/1005.blue_star/attack/2.attack
#       asset:mob/1005.blue_star/attack/3.scheduleloop
#       asset:mob/1005.blue_star/rejoin_process

# 実行
    execute as @a[scores={RX.Time=1..}] at @s run function asset:mob/1005.blue_star/attack/4.mp_inversion
# loop
    execute if entity @a[scores={RX.Time=1..},limit=1] run schedule function asset:mob/1005.blue_star/attack/3.scheduleloop 1t replace
