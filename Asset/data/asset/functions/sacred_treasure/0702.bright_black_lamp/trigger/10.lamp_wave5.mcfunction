#> asset:sacred_treasure/0702.bright_black_lamp/trigger/10.lamp_wave5
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/trigger/05.schedule_tick

# ダメージ処理
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=4..6] as @e[type=#lib:living,type=!player,distance=4..6] at @s run function asset:sacred_treasure/0702.bright_black_lamp/trigger/wave/05

# 演出
    playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1 0

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEYCcAbHKQOwCGAHALRwDMjl7ALEy7tKAJnHsArF2qV+9UimZd+YAgDtmAWwTJAYYoACAIxqwMZhm0BnJOBQB7QuohIjABjcEUcZ3Ay2wADdmbEJdcAAPJE8wKGiAX3iCS1I0QhtESQIrCAsXRBi4bGw0GCtddxiMe1yIXRi0KwBRYtLypoBHQhDsKABlc29yRAAzEPLEgF0gA_3
# 円 1
    particle dust 1 1 0 2 ^0 ^ ^-5 0 0 0 0 1
    particle dust 1 1 0 2 ^0.31395 ^ ^-4.99013 0 0 0 0 1
    particle dust 1 1 0 2 ^0.62667 ^ ^-4.96057 0 0 0 0 1
    particle dust 1 1 0 2 ^0.93691 ^ ^-4.91144 0 0 0 0 1
    particle dust 1 1 0 2 ^1.24345 ^ ^-4.84292 0 0 0 0 1
    particle dust 1 1 0 2 ^1.54508 ^ ^-4.75528 0 0 0 0 1
    particle dust 1 1 0 2 ^1.84062 ^ ^-4.64888 0 0 0 0 1
    particle dust 1 1 0 2 ^2.1289 ^ ^-4.52414 0 0 0 0 1
    particle dust 1 1 0 2 ^2.40877 ^ ^-4.38153 0 0 0 0 1
    particle dust 1 1 0 2 ^2.67913 ^ ^-4.22164 0 0 0 0 1
    particle dust 1 1 0 2 ^2.93893 ^ ^-4.04508 0 0 0 0 1
    particle dust 1 1 0 2 ^3.18712 ^ ^-3.85257 0 0 0 0 1
    particle dust 1 1 0 2 ^3.42274 ^ ^-3.64484 0 0 0 0 1
    particle dust 1 1 0 2 ^3.64484 ^ ^-3.42274 0 0 0 0 1
    particle dust 1 1 0 2 ^3.85257 ^ ^-3.18712 0 0 0 0 1
    particle dust 1 1 0 2 ^4.04508 ^ ^-2.93893 0 0 0 0 1
    particle dust 1 1 0 2 ^4.22164 ^ ^-2.67913 0 0 0 0 1
    particle dust 1 1 0 2 ^4.38153 ^ ^-2.40877 0 0 0 0 1
    particle dust 1 1 0 2 ^4.52414 ^ ^-2.1289 0 0 0 0 1
    particle dust 1 1 0 2 ^4.64888 ^ ^-1.84062 0 0 0 0 1
    particle dust 1 1 0 2 ^4.75528 ^ ^-1.54508 0 0 0 0 1
    particle dust 1 1 0 2 ^4.84292 ^ ^-1.24345 0 0 0 0 1
    particle dust 1 1 0 2 ^4.91144 ^ ^-0.93691 0 0 0 0 1
    particle dust 1 1 0 2 ^4.96057 ^ ^-0.62667 0 0 0 0 1
    particle dust 1 1 0 2 ^4.99013 ^ ^-0.31395 0 0 0 0 1
    particle dust 1 1 0 2 ^5 ^ ^0 0 0 0 0 1
    particle dust 1 1 0 2 ^4.99013 ^ ^0.31395 0 0 0 0 1
    particle dust 1 1 0 2 ^4.96057 ^ ^0.62667 0 0 0 0 1
    particle dust 1 1 0 2 ^4.91144 ^ ^0.93691 0 0 0 0 1
    particle dust 1 1 0 2 ^4.84292 ^ ^1.24345 0 0 0 0 1
    particle dust 1 1 0 2 ^4.75528 ^ ^1.54508 0 0 0 0 1
    particle dust 1 1 0 2 ^4.64888 ^ ^1.84062 0 0 0 0 1
    particle dust 1 1 0 2 ^4.52414 ^ ^2.1289 0 0 0 0 1
    particle dust 1 1 0 2 ^4.38153 ^ ^2.40877 0 0 0 0 1
    particle dust 1 1 0 2 ^4.22164 ^ ^2.67913 0 0 0 0 1
    particle dust 1 1 0 2 ^4.04508 ^ ^2.93893 0 0 0 0 1
    particle dust 1 1 0 2 ^3.85257 ^ ^3.18712 0 0 0 0 1
    particle dust 1 1 0 2 ^3.64484 ^ ^3.42274 0 0 0 0 1
    particle dust 1 1 0 2 ^3.42274 ^ ^3.64484 0 0 0 0 1
    particle dust 1 1 0 2 ^3.18712 ^ ^3.85257 0 0 0 0 1
    particle dust 1 1 0 2 ^2.93893 ^ ^4.04508 0 0 0 0 1
    particle dust 1 1 0 2 ^2.67913 ^ ^4.22164 0 0 0 0 1
    particle dust 1 1 0 2 ^2.40877 ^ ^4.38153 0 0 0 0 1
    particle dust 1 1 0 2 ^2.1289 ^ ^4.52414 0 0 0 0 1
    particle dust 1 1 0 2 ^1.84062 ^ ^4.64888 0 0 0 0 1
    particle dust 1 1 0 2 ^1.54508 ^ ^4.75528 0 0 0 0 1
    particle dust 1 1 0 2 ^1.24345 ^ ^4.84292 0 0 0 0 1
    particle dust 1 1 0 2 ^0.93691 ^ ^4.91144 0 0 0 0 1
    particle dust 1 1 0 2 ^0.62667 ^ ^4.96057 0 0 0 0 1
    particle dust 1 1 0 2 ^0.31395 ^ ^4.99013 0 0 0 0 1
    particle dust 1 1 0 2 ^0 ^ ^5 0 0 0 0 1
    particle dust 1 1 0 2 ^-0.31395 ^ ^4.99013 0 0 0 0 1
    particle dust 1 1 0 2 ^-0.62667 ^ ^4.96057 0 0 0 0 1
    particle dust 1 1 0 2 ^-0.93691 ^ ^4.91144 0 0 0 0 1
    particle dust 1 1 0 2 ^-1.24345 ^ ^4.84292 0 0 0 0 1
    particle dust 1 1 0 2 ^-1.54508 ^ ^4.75528 0 0 0 0 1
    particle dust 1 1 0 2 ^-1.84062 ^ ^4.64888 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.1289 ^ ^4.52414 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.40877 ^ ^4.38153 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.67913 ^ ^4.22164 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.93893 ^ ^4.04508 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.18712 ^ ^3.85257 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.42274 ^ ^3.64484 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.64484 ^ ^3.42274 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.85257 ^ ^3.18712 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.04508 ^ ^2.93893 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.22164 ^ ^2.67913 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.38153 ^ ^2.40877 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.52414 ^ ^2.1289 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.64888 ^ ^1.84062 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.75528 ^ ^1.54508 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.84292 ^ ^1.24345 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.91144 ^ ^0.93691 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.96057 ^ ^0.62667 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.99013 ^ ^0.31395 0 0 0 0 1
    particle dust 1 1 0 2 ^-5 ^ ^0 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.99013 ^ ^-0.31395 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.96057 ^ ^-0.62667 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.91144 ^ ^-0.93691 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.84292 ^ ^-1.24345 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.75528 ^ ^-1.54508 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.64888 ^ ^-1.84062 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.52414 ^ ^-2.1289 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.38153 ^ ^-2.40877 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.22164 ^ ^-2.67913 0 0 0 0 1
    particle dust 1 1 0 2 ^-4.04508 ^ ^-2.93893 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.85257 ^ ^-3.18712 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.64484 ^ ^-3.42274 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.42274 ^ ^-3.64484 0 0 0 0 1
    particle dust 1 1 0 2 ^-3.18712 ^ ^-3.85257 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.93893 ^ ^-4.04508 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.67913 ^ ^-4.22164 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.40877 ^ ^-4.38153 0 0 0 0 1
    particle dust 1 1 0 2 ^-2.1289 ^ ^-4.52414 0 0 0 0 1
    particle dust 1 1 0 2 ^-1.84062 ^ ^-4.64888 0 0 0 0 1
    particle dust 1 1 0 2 ^-1.54508 ^ ^-4.75528 0 0 0 0 1
    particle dust 1 1 0 2 ^-1.24345 ^ ^-4.84292 0 0 0 0 1
    particle dust 1 1 0 2 ^-0.93691 ^ ^-4.91144 0 0 0 0 1
    particle dust 1 1 0 2 ^-0.62667 ^ ^-4.96057 0 0 0 0 1
    particle dust 1 1 0 2 ^-0.31395 ^ ^-4.99013 0 0 0 0 1