#> asset:sacred_treasure/1024.brave_rod/trigger/combo/laser_finish
#
#
#
# @within function
#   asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_shot
#   asset:sacred_treasure/1024.brave_rod/trigger/combo/laser_finish

# パーティクル
    # 内側
        particle dust 0.6 0.9 1 1 ^ ^ ^ 0 0 0 1 1 force @a[distance=..30]
        particle dust 0.6 0.9 1 1 ^ ^ ^0.5 0 0 0 1 1 force @a[distance=..30]
        particle dust 0.6 0.9 1 1 ^ ^ ^-0.5 0 0 0 1 1 force @a[distance=..30]
    # 外側
        particle dust 0.3 0.9 1 0.7 ^ ^ ^ 0.07 0.07 0.07 1 1 force @a[distance=..30]
        particle dust 0.3 0.9 1 0.7 ^ ^ ^0.5 0.07 0.07 0.07 1 1 force @a[distance=..30]
        particle dust 0.3 0.9 1 0.7 ^ ^ ^-0.5 0.07 0.07 0.07 1 1 force @a[distance=..30]
    # 内側
        #particle dust 0 0.7 1 1 ^ ^ ^ 0 0 0 1 1 force @a[distance=..30]
        #particle dust 0 0.7 1 1 ^ ^ ^0.5 0 0 0 1 1 force @a[distance=..30]
        #particle dust 0 0.7 1 1 ^ ^ ^-0.5 0 0 0 1 1 force @a[distance=..30]

# 再帰
    execute if entity @s[distance=..20] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/1024.brave_rod/trigger/combo/laser_finish