#> asset:mob/0074.watermelon_bomber/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0074.watermelon_bomber/hurt/1.trigger

# 演出
    playsound block.wood.break master @a ~ ~ ~ 1.6 1 0
    particle block melon ~ ~1.3 ~ 0.3 0.5 0.3 0 20 normal @a
    particle block nether_wart_block ~ ~1.3 ~ 0.4 0.4 0.4 0 10 normal @a