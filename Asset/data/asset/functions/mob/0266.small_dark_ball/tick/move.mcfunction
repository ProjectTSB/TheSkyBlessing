#> asset:mob/0266.small_dark_ball/tick/move
#
#
#
# @within function
#   asset:mob/0266.small_dark_ball/tick/2.tick
#   asset:mob/0266.small_dark_ball/tick/move

# 前進
    tp @s ^ ^ ^0.1 ~ ~

# スコア減算
    scoreboard players remove @s 7E.MoveTimesPerTick 1
    scoreboard players remove @s 7E.Range 1

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/0266.small_dark_ball/tick/event/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0266.small_dark_ball/tick/event/hit

# 再帰
    execute if entity @s[scores={7E.MoveTimesPerTick=1..,7E.Range=1..}] at @s run function asset:mob/0266.small_dark_ball/tick/move

# キル
    execute if entity @s[scores={7E.Range=0}] run function asset:mob/0266.small_dark_ball/tick/event/kill