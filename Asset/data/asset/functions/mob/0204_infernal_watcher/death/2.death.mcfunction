#> asset:mob/0204_infernal_watcher/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0204_infernal_watcher/death/1.trigger

    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 1.5 1
    playsound ogg:mob.blaze.breathe2 hostile @a ~ ~ ~ 1.5 1.5
    particle block crimson_hyphae ~ ~1.68 ~ 0 0 0 0 25