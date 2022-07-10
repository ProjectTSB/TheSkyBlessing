#> asset:mob/0287.burning_stomper/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0287.burning_stomper/tick/1.trigger

# スコア加算
    execute if entity @a[gamemode=!spectator,distance=..30] run scoreboard players add @s 7Z.MoveTime 1

# 付近に対象がいないならスコアリセット
    execute unless entity @a[gamemode=!spectator,distance=..30] run scoreboard players reset @s 7Z.MoveTime

# 飛び上がる
    execute if entity @s[scores={7Z.MoveTime=30},nbt={OnGround:1b}] run function asset:mob/0287.burning_stomper/tick/event/jump

# 着地で爆発
    execute if entity @s[scores={7Z.MoveTime=31..},nbt={OnGround:1b}] run function asset:mob/0287.burning_stomper/tick/event/stomp

# 首固定
    data modify entity @s Rotation[1] set value 0.0f