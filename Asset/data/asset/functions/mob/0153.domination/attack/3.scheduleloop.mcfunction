#> asset:mob/0153.domination/attack/3.scheduleloop
#
#
#
# @within function
#   asset:mob/0153.domination/attack/2.attack
#   asset:mob/0153.domination/attack/3.scheduleloop
#   asset:mob/0153.domination/rejoin_process

# コマンドを実行する
    execute as @a[tag=49.Panic] at @s run function asset:mob/0153.domination/attack/4.panic
# Scheduleループをする
    execute if entity @a[tag=49.Panic] run schedule function asset:mob/0153.domination/attack/3.scheduleloop 1t