#> asset:mob/0101.admiral_zombie/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0101.admiral_zombie/tick/1.trigger

# スコア
    scoreboard players add @s 2T.Tick 1

# 4秒ごとに周囲にゾンビ類(95-99)が12体以上いないか検知し、いない場合召喚
    execute if score @s 2T.Tick matches 80.. run function asset:mob/0101.admiral_zombie/tick/3.check_zombie_count