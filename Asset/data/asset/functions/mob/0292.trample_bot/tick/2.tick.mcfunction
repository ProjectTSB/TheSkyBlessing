#> asset:mob/0292.trample_bot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0292.trample_bot/tick/1.trigger

# スコア加算
    execute if entity @a[gamemode=!spectator,distance=..30] run scoreboard players add @s 84.MoveTime 1

# 付近に対象がいないならスコアリセット
    execute if entity @a[gamemode=!spectator,distance=30..40] run scoreboard players reset @s 84.MoveTime

# 飛び上がる
    execute if entity @s[scores={84.MoveTime=30},nbt={OnGround:1b}] run function asset:mob/0292.trample_bot/tick/event/jump

# 着地で爆発
    execute if entity @s[scores={84.MoveTime=31..},nbt={OnGround:1b}] run function asset:mob/0292.trample_bot/tick/event/stomp

# 首固定
    data modify entity @s Rotation[1] set value 0.0f