#> asset:sacred_treasure/0716.solar_armor/light_level/11-15
#
#
#
# @within function asset:sacred_treasure/0716.solar_armor/7.player_tick

# バフ
    effect give @s speed 1 1 true

# 演出
    execute rotated ~ 0 positioned ^ ^ ^-0.7 run particle end_rod ~ ~1.2 ~ 0.4 0.4 0.4 0 1 normal @a
    execute rotated ~ 0 positioned ^ ^ ^-0.7 run particle dust 1000000000 1000000000 3 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 1 normal @a
    execute rotated ~ 0 positioned ^ ^ ^-0.7 run particle dust 0 5000 100000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 1 normal @a
