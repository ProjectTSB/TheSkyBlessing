#> asset:mob/0217.medousa_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0217.medousa_eye/tick/1.trigger

# 演出
    particle dust 0.098 0.384 0.098 1.5 ^ ^1.7 ^-0.3 0.2 0.2 0.2 0 1 normal @a

# プレイヤーが近くにいるとそっちを見る
    execute if entity @a[gamemode=!spectator,distance=..10] run function asset:mob/0217.medousa_eye/tick/03.looking_player

# 注視スコアが60以上で石化ビーム発射
    execute if score @s 61.LookingTime matches 60.. positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/05.mineralization_beam