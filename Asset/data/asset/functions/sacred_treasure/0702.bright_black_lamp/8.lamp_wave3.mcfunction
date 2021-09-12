#> asset:sacred_treasure/0702.bright_black_lamp/8.lamp_wave3
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/5.schedule_tick

# ダメージ処理
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=2..4] as @e[type=#lib:living,type=!player,distance=2..4] at @s run function asset:sacred_treasure/0702.bright_black_lamp/wave_damage/3

# 演出
        playsound block.respawn_anchor.charge master @a ~ ~ ~ 0.6 1.4 0

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEYCcAbHKQOwCGAHALRwDMjl7ALEy7tKAJnHsArF2qV+9UimZd+YAgDtmAWwTJAYYoACAIxqwMZhm0BnJOBQB7QuohJaABgIo4zuBltgAN2ZsQl1wAA8kDzAoKIBfOIJLUjRCG0QuAisICxdEaLhsbDQYK10jN2iMexyIXWi0KwBRIpKypoBHQmDsKABlcy9yRAAzYLKEgF0gA_3
# 円 1
    particle dust 1 0.8 0 2 ^0 ^ ^-3 0 0 0 0 1
    particle dust 1 0.8 0 2 ^0.31359 ^ ^-2.98357 0 0 0 0 1
    particle dust 1 0.8 0 2 ^0.62374 ^ ^-2.93444 0 0 0 0 1
    particle dust 1 0.8 0 2 ^0.92705 ^ ^-2.85317 0 0 0 0 1
    particle dust 1 0.8 0 2 ^1.22021 ^ ^-2.74064 0 0 0 0 1
    particle dust 1 0.8 0 2 ^1.5 ^ ^-2.59808 0 0 0 0 1
    particle dust 1 0.8 0 2 ^1.76336 ^ ^-2.42705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.00739 ^ ^-2.22943 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.22943 ^ ^-2.00739 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.42705 ^ ^-1.76336 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.59808 ^ ^-1.5 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.74064 ^ ^-1.22021 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.85317 ^ ^-0.92705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.93444 ^ ^-0.62374 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.98357 ^ ^-0.31359 0 0 0 0 1
    particle dust 1 0.8 0 2 ^3 ^ ^0 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.98357 ^ ^0.31359 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.93444 ^ ^0.62374 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.85317 ^ ^0.92705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.74064 ^ ^1.22021 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.59808 ^ ^1.5 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.42705 ^ ^1.76336 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.22943 ^ ^2.00739 0 0 0 0 1
    particle dust 1 0.8 0 2 ^2.00739 ^ ^2.22943 0 0 0 0 1
    particle dust 1 0.8 0 2 ^1.76336 ^ ^2.42705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^1.5 ^ ^2.59808 0 0 0 0 1
    particle dust 1 0.8 0 2 ^1.22021 ^ ^2.74064 0 0 0 0 1
    particle dust 1 0.8 0 2 ^0.92705 ^ ^2.85317 0 0 0 0 1
    particle dust 1 0.8 0 2 ^0.62374 ^ ^2.93444 0 0 0 0 1
    particle dust 1 0.8 0 2 ^0.31359 ^ ^2.98357 0 0 0 0 1
    particle dust 1 0.8 0 2 ^0 ^ ^3 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-0.31359 ^ ^2.98357 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-0.62374 ^ ^2.93444 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-0.92705 ^ ^2.85317 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-1.22021 ^ ^2.74064 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-1.5 ^ ^2.59808 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-1.76336 ^ ^2.42705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.00739 ^ ^2.22943 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.22943 ^ ^2.00739 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.42705 ^ ^1.76336 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.59808 ^ ^1.5 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.74064 ^ ^1.22021 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.85317 ^ ^0.92705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.93444 ^ ^0.62374 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.98357 ^ ^0.31359 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-3 ^ ^0 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.98357 ^ ^-0.31359 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.93444 ^ ^-0.62374 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.85317 ^ ^-0.92705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.74064 ^ ^-1.22021 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.59808 ^ ^-1.5 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.42705 ^ ^-1.76336 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.22943 ^ ^-2.00739 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-2.00739 ^ ^-2.22943 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-1.76336 ^ ^-2.42705 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-1.5 ^ ^-2.59808 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-1.22021 ^ ^-2.74064 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-0.92705 ^ ^-2.85317 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-0.62374 ^ ^-2.93444 0 0 0 0 1
    particle dust 1 0.8 0 2 ^-0.31359 ^ ^-2.98357 0 0 0 0 1