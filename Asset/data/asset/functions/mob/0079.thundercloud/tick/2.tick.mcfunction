#> asset:mob/0079.thundercloud/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0079.thundercloud/tick/1.trigger

# スコア
    scoreboard players add @s 27.Tick 1

# 演出
    execute if score @s 27.Tick matches ..40 run particle dust 0.3 0.3 0.3 1 ~ ~ ~ 1 0.3 1 0 4 normal @a
    execute if score @s 27.Tick matches 40.. run particle dust 0.3 0.3 0.3 2 ~ ~ ~ 1 0.3 1 0 5 normal @a
# 移動
    execute if score @s 27.Tick matches ..40 rotated ~ ~-2 if block ^ ^ ^0.6 #lib:no_collision_without_fluid run tp @s ^ ^ ^0.6 ~ ~-2

# 落雷
    execute if score @s 27.Tick matches 48..54 run scoreboard players add @s 27.FallThunder 1
    execute if score @s 27.FallThunder matches 2.. rotated ~ 0 run function asset:mob/0079.thundercloud/tick/3.thunder

# 消滅
    execute if score @s 27.Tick matches 70.. run kill @s