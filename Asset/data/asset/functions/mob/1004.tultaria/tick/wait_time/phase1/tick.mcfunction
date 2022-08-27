#> asset:mob/1004.tultaria/tick/wait_time/phase1/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# スコア加算
    scoreboard players add @s RW.Tick 1

# ワープ
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/5.tereport
    execute if score @s RW.Tick matches 60 run scoreboard players reset @s RW.Tick 