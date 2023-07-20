#> asset:mob/0321.mini_guardian/tick/event/laser/yellow
#
# まだ判定がない黄色レーザー
#
# @within function
#   asset:mob/0321.mini_guardian/tick/event/shoot_laser
#   asset:mob/0321.mini_guardian/tick/event/laser/yellow

# パーティクル
    particle dust 1 1 0 0.4 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]
    particle dust 1 1 0 0.4 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 1 1 0 0.4 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 1 1 0 0.4 ^ ^ ^0.25 0 0 0 0 1 force @a[distance=..30]
    particle dust 1 1 0 0.4 ^ ^ ^-0.25 0 0 0 0 1 force @a[distance=..30]

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0321.mini_guardian/tick/event/laser/yellow