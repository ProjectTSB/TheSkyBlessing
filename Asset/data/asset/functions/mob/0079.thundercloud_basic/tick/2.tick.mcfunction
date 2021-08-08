#> asset:mob/0079.thundercloud_basic/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0079.thundercloud_basic/tick/1.trigger

# スコア
    scoreboard players add @s 27.Tick 1

# 演出
    execute if score @s 27.Tick matches ..40 run particle dust 0.3 0.3 0.3 1 ~ ~ ~ 1 0.3 1 0 4 normal @a
    execute if score @s 27.Tick matches 40.. run particle dust 0.3 0.3 0.3 2 ~ ~ ~ 1 0.3 1 0 5 normal @a
# 移動
    execute if score @s 27.Tick matches ..40 run tp @s ^ ^ ^0.6 ~ ~-2

# Projectileの雷を召喚(2Tickごとに1回を3回実行)
    execute unless score @s 27.Tick matches ..49 unless score @s 27.Tick matches 51 unless score @s 27.Tick matches 53 unless score @s 27.Tick matches 55.. run function asset:mob/0079.thundercloud_basic/tick/3.lightning

# 消滅
    kill @s[scores={27.Tick=70..}]