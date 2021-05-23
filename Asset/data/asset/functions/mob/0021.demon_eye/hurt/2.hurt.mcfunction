#> asset:mob/0021.demon_eye/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0021.demon_eye/hurt/1.trigger

playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 1.5 1
particle block redstone_wire ~ ~1.68 ~ 0 0 0 0 25