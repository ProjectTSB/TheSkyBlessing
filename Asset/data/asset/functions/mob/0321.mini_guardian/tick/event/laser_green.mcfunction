#> asset:mob/0321.mini_guardian/tick/event/laser_green
#
#
#
# @within function
#   asset:mob/0321.mini_guardian/tick/event/shoot_laser
#   asset:mob/0321.mini_guardian/tick/event/laser_green

# パーティクル
    particle dust 0 1 0 0.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^0.25 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^-0.25 0 0 0 0 1 force @a[distance=..30]

# 再帰
    execute if entity @s[distance=..15] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0321.mini_guardian/tick/event/laser_green