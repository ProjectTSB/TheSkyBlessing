#> asset:mob/1004.tultaria/tick/7.star_summon/1.star_summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/7.star_summon/2.first_tick

# 召喚する
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/7.star_summon/3.summon

# リセット
    execute if score @s RW.Tick matches 77 run function asset:mob/1004.tultaria/tick/reset