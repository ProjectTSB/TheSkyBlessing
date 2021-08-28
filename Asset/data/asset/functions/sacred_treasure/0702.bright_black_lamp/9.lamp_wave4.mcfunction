#> asset:sacred_treasure/0702.bright_black_lamp/9.lamp_wave4
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/5.scheduke_tick

# ダメージ処理
    execute if entity @e[type=#lib:living,type=!player,distance=3..5] as @e[type=#lib:living,type=!player,distance=3..5] at @s run function asset:sacred_treasure/0702.bright_black_lamp/wave_damage/4

# 演出
    playsound block.respawn_anchor.charge master @a ~ ~ ~ 0.6 1.8 0

    # [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEYCcAbHKQOwCGAHALRwDMjl7ALEy7tKAJnHsArF2qV+9UimZd+YAgDtmAWwTJAYYoACAIxqwMZhm0BnJOBQB7QuohJWABgIo4zuBltgAN2ZsQl1wAA8kDzAoKIBfOIJLUjRCG0R+AisICxdEaLhsbDQYK10jN2iMexyIXWi0KwBRIpKypoBHQmDsKABlcy9yRAAzYLKEgF0gA_3
# 円 1
    particle dust 1 0.9 0 2 ^0 ^ ^-4 0 0 0 0 1
    particle dust 1 0.9 0 2 ^0.31384 ^ ^-3.98767 0 0 0 0 1
    particle dust 1 0.9 0 2 ^0.62574 ^ ^-3.95075 0 0 0 0 1
    particle dust 1 0.9 0 2 ^0.93378 ^ ^-3.88948 0 0 0 0 1
    particle dust 1 0.9 0 2 ^1.23607 ^ ^-3.80423 0 0 0 0 1
    particle dust 1 0.9 0 2 ^1.53073 ^ ^-3.69552 0 0 0 0 1
    particle dust 1 0.9 0 2 ^1.81596 ^ ^-3.56403 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.08999 ^ ^-3.41056 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.35114 ^ ^-3.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.59779 ^ ^-3.04162 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.82843 ^ ^-2.82843 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.04162 ^ ^-2.59779 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.23607 ^ ^-2.35114 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.41056 ^ ^-2.08999 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.56403 ^ ^-1.81596 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.69552 ^ ^-1.53073 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.80423 ^ ^-1.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.88948 ^ ^-0.93378 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.95075 ^ ^-0.62574 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.98767 ^ ^-0.31384 0 0 0 0 1
    particle dust 1 0.9 0 2 ^4 ^ ^0 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.98767 ^ ^0.31384 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.95075 ^ ^0.62574 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.88948 ^ ^0.93378 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.80423 ^ ^1.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.69552 ^ ^1.53073 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.56403 ^ ^1.81596 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.41056 ^ ^2.08999 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.23607 ^ ^2.35114 0 0 0 0 1
    particle dust 1 0.9 0 2 ^3.04162 ^ ^2.59779 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.82843 ^ ^2.82843 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.59779 ^ ^3.04162 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.35114 ^ ^3.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^2.08999 ^ ^3.41056 0 0 0 0 1
    particle dust 1 0.9 0 2 ^1.81596 ^ ^3.56403 0 0 0 0 1
    particle dust 1 0.9 0 2 ^1.53073 ^ ^3.69552 0 0 0 0 1
    particle dust 1 0.9 0 2 ^1.23607 ^ ^3.80423 0 0 0 0 1
    particle dust 1 0.9 0 2 ^0.93378 ^ ^3.88948 0 0 0 0 1
    particle dust 1 0.9 0 2 ^0.62574 ^ ^3.95075 0 0 0 0 1
    particle dust 1 0.9 0 2 ^0.31384 ^ ^3.98767 0 0 0 0 1
    particle dust 1 0.9 0 2 ^0 ^ ^4 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-0.31384 ^ ^3.98767 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-0.62574 ^ ^3.95075 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-0.93378 ^ ^3.88948 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-1.23607 ^ ^3.80423 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-1.53073 ^ ^3.69552 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-1.81596 ^ ^3.56403 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.08999 ^ ^3.41056 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.35114 ^ ^3.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.59779 ^ ^3.04162 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.82843 ^ ^2.82843 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.04162 ^ ^2.59779 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.23607 ^ ^2.35114 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.41056 ^ ^2.08999 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.56403 ^ ^1.81596 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.69552 ^ ^1.53073 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.80423 ^ ^1.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.88948 ^ ^0.93378 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.95075 ^ ^0.62574 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.98767 ^ ^0.31384 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-4 ^ ^0 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.98767 ^ ^-0.31384 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.95075 ^ ^-0.62574 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.88948 ^ ^-0.93378 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.80423 ^ ^-1.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.69552 ^ ^-1.53073 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.56403 ^ ^-1.81596 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.41056 ^ ^-2.08999 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.23607 ^ ^-2.35114 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-3.04162 ^ ^-2.59779 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.82843 ^ ^-2.82843 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.59779 ^ ^-3.04162 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.35114 ^ ^-3.23607 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-2.08999 ^ ^-3.41056 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-1.81596 ^ ^-3.56403 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-1.53073 ^ ^-3.69552 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-1.23607 ^ ^-3.80423 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-0.93378 ^ ^-3.88948 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-0.62574 ^ ^-3.95075 0 0 0 0 1
    particle dust 1 0.9 0 2 ^-0.31384 ^ ^-3.98767 0 0 0 0 1