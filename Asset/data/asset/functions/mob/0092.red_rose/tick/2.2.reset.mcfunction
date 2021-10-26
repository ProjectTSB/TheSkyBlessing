#> asset:mob/0092.red_rose/tick/2.2.reset
#
# リセット処理
#
# @within function asset:mob/0092.red_rose/tick/2.tick

# スコアを戻す
    scoreboard players set @s 2K.Time 0

# NoAIを戻す
    data modify entity @s NoAI set value 0