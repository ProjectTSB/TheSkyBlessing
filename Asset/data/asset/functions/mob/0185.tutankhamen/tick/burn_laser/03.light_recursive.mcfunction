#> asset:mob/0185.tutankhamen/tick/burn_laser/03.light_recursive
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_laser/02.light
#   asset:mob/0185.tutankhamen/tick/burn_laser/03.light_recursive

# 赤いdust
    particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @a

# 再帰
    execute if entity @s[distance=..30] unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:mob/0185.tutankhamen/tick/burn_laser/03.light_recursive

