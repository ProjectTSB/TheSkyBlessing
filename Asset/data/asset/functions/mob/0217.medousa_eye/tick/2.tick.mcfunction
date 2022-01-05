#> asset:mob/0217.medousa_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0217.medousa_eye/tick/1.trigger

# プレイヤーが近くにいるとそっちを見る
    execute if entity @a[gamemode=!spectator,distance=..10] run function asset:mob/0217.medousa_eye/tick/03.looking_player

# プレイヤーが近くにいないと注視スコアをリセット
    execute unless entity @a[gamemode=!spectator,distance=..10] run scoreboard players reset @s 61.LookingTime

# 注視スコアが60以上で石化ビーム発射
    execute if score @s 61.LookingTime matches 60.. positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/05.mineralization_beam