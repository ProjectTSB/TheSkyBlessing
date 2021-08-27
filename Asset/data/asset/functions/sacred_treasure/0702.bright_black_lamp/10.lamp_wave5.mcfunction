#> asset:sacred_treasure/0702.bright_black_lamp/10.lamp_wave5
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/5.scheduke_tick

# ダメージ処理
        data modify storage lib: Argument.Damage set value 35f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Fire"
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,distance=4..6] run function lib:damage/
        data remove storage lib: Argument

# 演出
    playsound block.respawn_anchor.charge master @a ~ ~ ~ 0.6 2 0

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