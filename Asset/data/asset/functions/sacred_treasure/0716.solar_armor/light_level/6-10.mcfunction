#> asset:sacred_treasure/0716.solar_armor/light_level/6-10
#
#
#
# @within function asset:sacred_treasure/0716.solar_armor/7.player_tick

# バフ
    effect give @s speed 1 0 true

# 演出
    execute rotated ~ 0 positioned ^ ^ ^-0.7 run particle dust 0 5000 100000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 1 normal @a
