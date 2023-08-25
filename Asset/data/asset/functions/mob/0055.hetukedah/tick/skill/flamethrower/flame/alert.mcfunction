#> asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/alert
#
#
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/flamethrower/tick
#   asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/alert

# パーティクル
    particle dust 0.7 0 0 0.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]
    particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 0.7 0 0 0.5 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 0.7 0 0 0.5 ^ ^ ^0.25 0 0 0 0 1 force @a[distance=..30]
    particle dust 0.7 0 0 0.5 ^ ^ ^-0.25 0 0 0 0 1 force @a[distance=..30]

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..12] positioned ^ ^ ^1 run function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/alert