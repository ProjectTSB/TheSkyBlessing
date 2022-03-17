#> asset:mob/0275.destroyed_block/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0275.destroyed_block/tick/1.trigger


# Init処理
    execute at @s[tag=7N.Init] run function asset:mob/0275.destroyed_block/init

# タイマー減算
    scoreboard players remove @s 7N.Timer 1

# フレーム分岐
    execute if score @s 7N.Timer matches ..0 at @s run function asset:mob/0275.destroyed_block/frame/0

