#> asset:mob/0217.medousa_eye/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0217.medousa_eye/death/1.trigger

# 演出
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 0.7 1
    particle block green_terracotta ~ ~1.68 ~ 0.2 0.2 0.2 0 100