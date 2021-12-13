#> asset:mob/1004.tultaria/tick/3.coordinate_attack/1.coordinate_attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/3.coordinate_attack/2.first_tick
# 召喚
    execute if score @s RW.Tick matches 0 at @a[distance=..100] run function asset:mob/1004.tultaria/tick/3.coordinate_attack/3.summon

# 爆発
    execute if score @s RW.Tick matches 24 at @e[tag=RW.MeteorMaker,tag=!RW.BigMeteorMaker,distance=..100] run function asset:mob/1004.tultaria/tick/3.coordinate_attack/4.damage

# リセット
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset