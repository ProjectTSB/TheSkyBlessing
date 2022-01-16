#> asset:mob/0232.honey_leader/tick/06.beam
#
# 再帰ビームを打つよ
#
# @within function
#   asset:mob/0232.honey_leader/tick/2.tick
#   asset:mob/0232.honey_leader/tick/06.beam

# 演出
    particle dust 1.000 0.741 0.141 1.3 ~ ~ ~ 0 0 0 0 1 normal @a
    particle dust 1.000 0.741 0.141 1.3 ^ ^ ^0.25 0 0 0 0 1 normal @a
    particle dust 1.000 0.741 0.141 1.3 ^ ^ ^0.5 0 0 0 0 1 normal @a
    particle dust 1.000 0.741 0.141 1.3 ^ ^ ^0.75 0 0 0 0 1 normal @a

# ヒット処理
    execute positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=!spectator,dx=0] run function asset:mob/0232.honey_leader/tick/07.hit

# 再帰
    execute if entity @s[distance=..20] positioned ~-0.5 ~ ~-0.5 unless entity @a[gamemode=!spectator,dx=0] positioned ~0.5 ~ ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0232.honey_leader/tick/06.beam