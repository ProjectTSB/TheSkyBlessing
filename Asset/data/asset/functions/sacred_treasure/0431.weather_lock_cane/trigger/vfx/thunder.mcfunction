#> asset:sacred_treasure/0431.weather_lock_cane/trigger/vfx/thunder
#
#
#
# @within function asset:sacred_treasure/0431.weather_lock_cane/trigger/3.main

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 200
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 200
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 5
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 75

    playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 0.8 2
    playsound entity.lightning_bolt.impact player @s ~ ~ ~ 1 0