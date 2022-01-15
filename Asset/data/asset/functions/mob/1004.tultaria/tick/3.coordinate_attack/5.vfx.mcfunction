#> asset:mob/1004.tultaria/tick/3.coordinate_attack/5.vfx
#
#
#
# @within function asset:mob/1004.tultaria/tick/3.coordinate_attack/4.thunder

# 演出
    particle end_rod ~ ~ ~ 0.7 3 0.7 0 50
    particle electric_spark ~ ~ ~ 0.3 3 0.3 0.1 50
    particle dust 1 1 1 1 ~ ~3 ~ 0.5 3 0.5 0 300
    particle dust 1 1 10 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 1

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0 0