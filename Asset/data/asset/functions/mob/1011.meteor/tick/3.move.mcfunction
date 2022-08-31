#> asset:mob/1011.meteor/tick/3.move
#
#
#
# @within function
#   asset:mob/1011.meteor/tick/2.tick
#   asset:mob/1011.meteor/tick/3.move

# パーティクル
    particle dust 0 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 1
    particle dust 0.161 0.204 0.239 1.5 ~ ~ ~ 0.1 0.1 0.1 0 1

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={S3.MoveTimesPerTick=1..,S3.Range=1..}] run scoreboard players operation @s S3.MoveTimesPerTick = @s S3.Speed

# 前進
    tp @s ^ ^ ^0.1 ~ ~

# スコア減算
    scoreboard players remove @s S3.MoveTimesPerTick 1
    scoreboard players remove @s S3.Range 1

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/1011.meteor/tick/3.landing

# キル
    execute if entity @s[scores={S3.Range=..0}] run function asset:mob/1011.meteor/tick/3.landing

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:mob/1011.meteor/tick/3.landing

# 再帰
    execute if entity @s[scores={S3.MoveTimesPerTick=1..,S3.Range=1..}] at @s run function asset:mob/1011.meteor/tick/3.move