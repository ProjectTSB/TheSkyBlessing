#> asset:mob/0319.haruclaire_ice_bullet/tick/move/main
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/move/*

# 前進
    execute positioned ^ ^ ^0.1 run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s 8V.CurrentSpeed 1
    scoreboard players remove @s 8V.Range 1

# プレイヤーの衝突判定
    execute positioned ~ ~0.9 ~ if entity @a[distance=..1.5] run function asset:mob/0319.haruclaire_ice_bullet/tick/move/damage

# 以下キル処理
    # 壁の衝突判定
        execute positioned ~ ~0.9 ~ unless block ~ ~ ~ #lib:no_collision run function asset:mob/0319.haruclaire_ice_bullet/tick/move/damage
    # 生存時間
        execute if entity @s[scores={8V.Range=..-1}] positioned ~ ~0.9 ~ run function asset:mob/0319.haruclaire_ice_bullet/tick/move/kill

# 再帰
    execute if entity @s[scores={8V.CurrentSpeed=1..,8V.Range=1..}] at @s run function asset:mob/0319.haruclaire_ice_bullet/tick/move/move