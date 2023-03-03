#> asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder
#
#
#
# @within function asset:artifact/0431.weather_lock_cane/trigger/3.main

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 200
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 200
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 5
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 75

    playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 2 1
    playsound entity.lightning_bolt.impact player @s ~ ~ ~ 1 0
# 演出用
    execute rotated ~ 0 positioned ^1.4 ^ ^-2.42487 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^2.8 ^ ^0 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^1.4 ^ ^2.42487 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^-1.4 ^ ^2.42487 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^-2.8 ^ ^0 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^-1.4 ^ ^-2.42487 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^0 ^ ^-5 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^4.33013 ^ ^-2.5 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^4.33013 ^ ^2.5 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^0 ^ ^5 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^-4.33013 ^ ^2.5 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2
    execute rotated ~ 0 positioned ^-4.33013 ^ ^-2.5 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder2