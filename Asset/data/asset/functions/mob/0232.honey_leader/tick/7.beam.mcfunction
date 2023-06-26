#> asset:mob/0232.honey_leader/tick/7.beam
#
# 再帰ビームを打つよ
#
# @within function
#   asset:mob/0232.honey_leader/tick/6.shoot_and_reset
#   asset:mob/0232.honey_leader/tick/7.beam

# 演出
    particle dust 1.000 0.741 0.141 1.3 ~ ~ ~ 0.1 0.1 0.1 0 4 normal @a
    particle dust 1.000 0.741 0.141 1.3 ^ ^ ^0.5 0.1 0.1 0.1 0 4 normal @a

# ヒット処理
    execute positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=!spectator,dx=0] run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add LandingTarget

# 再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0232.honey_leader/tick/7.beam