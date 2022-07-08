#> asset:mob/0188.fireball/tick/move
#
#
#
# @within function
#   asset:mob/0188.fireball/tick/2.tick
#   asset:mob/0188.fireball/tick/move

# パーティクル
    particle flame ~ ~ ~ 0.1 0.1 0.1 0.005 1
    particle dust 1 0.5 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]

# 前進
    execute if entity @s[scores={58.Recursive=1..,58.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# スコア減算
    scoreboard players remove @s 58.Recursive 1
    scoreboard players remove @s 58.Range 1

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/0188.fireball/event/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0188.fireball/event/hit

# 再帰
    execute if entity @s[scores={58.Recursive=1..,58.Range=1..}] at @s run function asset:mob/0188.fireball/tick/move

# キル
    execute if entity @s[scores={58.Range=0}] run kill @s