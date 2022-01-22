#> asset:mob/0217.medousa_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0217.medousa_eye/tick/1.trigger

# 演出
    particle dust 0.294 0.353 0.043 1.5 ^ ^1.7 ^-0.3 0.2 0.2 0.2 0 1 normal @a

# プレイヤーが前方(視界内)にいるときのみスコア増加
    execute unless score @s 61.Tick matches 60.. positioned ^ ^ ^10 if entity @p[gamemode=!spectator,tag=!61.Stone,distance=..10] at @s run scoreboard players add @s 61.Tick 1

# スコアが60の時、向きを固定する
    execute if score @s 61.Tick matches 60 run function asset:mob/0217.medousa_eye/tick/03.fix_direction

# スコアが61のとき、予備動作
    execute if score @s 61.Tick matches 61 run execute positioned ^ ^1.7 ^0.4 run function asset:mob/0217.medousa_eye/tick/04.vfx

# 60以上の場合スコア増加
    execute if score @s 61.Tick matches 60.. run scoreboard players add @s 61.Tick 1

# スコアが80以上で石化ビーム発射
    execute if score @s 61.Tick matches 70.. positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/05.mineralization_beam

# 音
    execute if score @s 61.Tick matches 70 run playsound minecraft:entity.elder_guardian.death hostile @a[distance=..25] ~ ~ ~ 0.6 2 0.1

# リセット
    execute if score @s 61.Tick matches 70.. run data modify entity @s NoAI set value 0b
    execute if score @s 61.Tick matches 70.. run scoreboard players reset @s 61.Tick
