#> asset:sacred_treasure/0431.weather_lock_cane/trigger/vfx/rain
#
#
#
# @within function asset:sacred_treasure/0431.weather_lock_cane/trigger/3.main

# 演出
    particle dolphin ~ ~1.2 ~ 1.2 0.5 1.2 0 500 normal @s
    particle block light_blue_concrete_powder ~ ~1.2 ~ 1 0.4 1 0 150 normal @s
    playsound entity.player.splash.high_speed player @s ~ ~ ~ 0.8 1.2 0
    playsound entity.player.splash.high_speed player @s ~ ~ ~ 0.8 1.5 0
    playsound entity.generic.swim player @s ~ ~ ~ 0.8 1.5 0