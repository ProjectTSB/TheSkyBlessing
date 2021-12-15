#> asset:mob/1004.tultaria/tick/5.ball_attack/1.ball_attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/5.ball_attack/2.first_tick

    execute if score @s RW.Tick matches 20 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

    execute if score @s RW.Tick matches 25 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

    execute if score @s RW.Tick matches 30 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

# リセット
    execute if score @s RW.Tick matches 37 run function asset:mob/1004.tultaria/tick/reset