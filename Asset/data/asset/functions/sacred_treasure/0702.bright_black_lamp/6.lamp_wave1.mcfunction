#> asset:sacred_treasure/0702.bright_black_lamp/6.lamp_wave1
#
#
#
# @within function asset:sacred_treasure/0702.bright_black_lamp/5.scheduke_tick

# ダメージ処理
        data modify storage lib: Argument.Damage set value 25f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Fire"
        function lib:damage/modifier
        execute as @e[type=#lib:living,type=!player,distance=..2] run function lib:damage/
        data remove storage lib: Argument


# 演出
    playsound block.respawn_anchor.charge master @a ~ ~ ~ 0.6 1 0

    # [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAEYCcAbHKQOwCGAHALRwDMjl7ALEy7tKAJnHsArF2qV+9UimZd+YAgDtmAWwTJAYYoACAIxqwMZhm0BnJOBQB7QuohJRABgIo4zuBltgAN2ZsQl1wAA8kDzAoKIBfOIJLUjRCG0QjAisICxdEaLhsbDQYK10jN2iMexyIXWi0KwBRIpKypoBHQmDsKABlcy9yRAAzYLKEgF0gA_3
# 円 1
    particle dust 0.6 0.6 0 1.5 ^0 ^ ^-1 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.30902 ^ ^-0.95106 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.58779 ^ ^-0.80902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.80902 ^ ^-0.58779 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.95106 ^ ^-0.30902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^1 ^ ^0 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.95106 ^ ^0.30902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.80902 ^ ^0.58779 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.58779 ^ ^0.80902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0.30902 ^ ^0.95106 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^0 ^ ^1 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.30902 ^ ^0.95106 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.58779 ^ ^0.80902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.80902 ^ ^0.58779 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.95106 ^ ^0.30902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-1 ^ ^0 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.95106 ^ ^-0.30902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.80902 ^ ^-0.58779 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.58779 ^ ^-0.80902 0 0 0 0 1
    particle dust 0.6 0.6 0 1.5 ^-0.30902 ^ ^-0.95106 0 0 0 0 1