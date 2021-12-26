#> asset:mob/1004.tultaria/tick/5.ball_attack/1.ball_attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/5.ball_attack/2.first_tick

# 召喚する
    execute if score @s RW.Tick matches 20 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

    execute if score @s RW.Tick matches 24 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

    execute if score @s RW.Tick matches 28 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

    execute if score @s RW.Tick matches 32 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

    execute if score @s RW.Tick matches 36 positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/5.ball_attack/3.summon

# リセット
    execute if score @s RW.Tick matches 45 run function asset:mob/1004.tultaria/tick/reset