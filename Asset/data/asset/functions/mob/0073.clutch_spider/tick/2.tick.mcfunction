#> asset:mob/0073.clutch_spider/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0073.clutch_spider/tick/1.trigger


# スコアを増やす
    execute positioned ^ ^ ^10 if entity @p[distance=..10] run scoreboard players add @s 21.Time 1

# 発動
    execute if score @s 21.Time matches 80.. if entity @a[distance=..30] positioned ~ ~0.5 ~ run function asset:mob/0073.clutch_spider/tick/2.1.skill