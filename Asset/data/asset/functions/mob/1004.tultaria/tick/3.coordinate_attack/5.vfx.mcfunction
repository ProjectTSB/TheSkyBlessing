#> asset:mob/1004.tultaria/tick/3.coordinate_attack/5.vfx
#
#
#
# @within function asset:mob/1004.tultaria/tick/3.coordinate_attack/4.thunder

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 0