#> asset:mob/1004.tultaria/tick/3.coordinate_attack/1.coordinate_attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/3.coordinate_attack/2.first_tick

# ダメージの雷(プレイヤー数分)
    execute if score @s RW.Tick matches 24..28 at @a at @e[tag=RW.CoordinateMarker,distance=..100,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/3.coordinate_attack/4.thunder

# リセット
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset