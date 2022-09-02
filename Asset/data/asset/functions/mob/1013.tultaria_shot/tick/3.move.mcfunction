#> asset:mob/1013.tultaria_shot/tick/3.move
#
#
#
# @within function
#   asset:mob/1013.tultaria_shot/tick/2.tick
#   asset:mob/1013.tultaria_shot/tick/3.move

# パーティクル
    particle minecraft:dust 0.6 0.15 0.1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]

# スコア減算
    scoreboard players remove @s S5.MoveTimesPerTick 1
    scoreboard players remove @s S5.Range 1

# 前進
    execute if entity @s[scores={S5.MoveTimesPerTick=0}] run tp @s ~ ~ ~

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/1013.tultaria_shot/tick/event/hit

# 再帰
    execute if entity @s[scores={S5.MoveTimesPerTick=1..,S5.Range=1..}] positioned ^ ^ ^0.5 run function asset:mob/1013.tultaria_shot/tick/3.move

# キル
    execute if entity @s[scores={S5.Range=0}] run kill @s