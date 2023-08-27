#> asset:mob/0318.haruclaire_rod/tick/move
#
# Mobのtick時の処理
#
# @within function asset:mob/0318.haruclaire_rod/tick/*

# 前進
    execute rotated ~-90 ~ positioned ^ ^ ^0.1 rotated ~90 ~ run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s 8U.CurrentSpeed 1
    scoreboard players remove @s 8U.Range 1
    execute if score @s 8U.CoolTime matches 1.. run scoreboard players remove @s 8U.CoolTime 1

# プレイヤーの衝突判定
    execute if score @s 8U.CoolTime matches ..0 positioned ~ ~1.4 ~ if entity @a[distance=..1.5] run function asset:mob/0318.haruclaire_rod/tick/damage_move

# 再帰
    execute if entity @s[scores={8U.CurrentSpeed=1..,8U.Range=1..}] at @s run function asset:mob/0318.haruclaire_rod/tick/move

# 以下キル処理
    # 壁の衝突判定
        execute positioned ~ ~1.4 ~ unless block ~ ~ ~ #lib:no_collision run function asset:mob/0318.haruclaire_rod/tick/damage_break
    # 生存時間
        execute if entity @s[scores={8U.Range=..0}] positioned ~ ~1.4 ~ run function asset:mob/0318.haruclaire_rod/tick/kill