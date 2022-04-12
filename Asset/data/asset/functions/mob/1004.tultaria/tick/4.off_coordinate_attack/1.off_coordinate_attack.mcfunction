#> asset:mob/1004.tultaria/tick/4.off_coordinate_attack/1.off_coordinate_attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/2.first_tick

# ダメージ
    execute if score @s RW.Tick matches 22 at @a at @e[tag=RW.OffCoordinateMarker,distance=..100,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/4.off_coordinate_attack/4.attack

# リセット
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset