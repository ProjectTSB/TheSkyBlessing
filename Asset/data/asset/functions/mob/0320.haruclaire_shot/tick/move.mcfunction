#> asset:mob/0320.haruclaire_shot/tick/move
#
# Mobのtick時の処理
#
# @within function asset:mob/0320.haruclaire_shot/tick/*

# パーティクル
    particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0.1 0.1 0.1 1 1 normal @a
    execute if predicate lib:random_pass_per/10 run particle snowflake ~ ~ ~ 0 0 0 0.1 1 normal @a

# 前進
    execute positioned ^ ^ ^0.1 run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s 8W.CurrentSpeed 1
    scoreboard players remove @s 8W.Range 1

# プレイヤーの衝突判定
    execute if entity @a[distance=..1] run function asset:mob/0320.haruclaire_shot/tick/damage

# 再帰
    execute if entity @s[scores={8W.CurrentSpeed=1..,8W.Range=1..}] at @s run function asset:mob/0320.haruclaire_shot/tick/move

# 以下キル処理
    # 生存時間
        execute if entity @s[scores={8W.Range=..0}] run kill @s