#> asset:mob/0204_infernal_watcher/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0204_infernal_watcher/hurt/1.trigger

playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 1.5
particle block crimson_hyphae ~ ~1.68 ~ 0 0 0 0 25