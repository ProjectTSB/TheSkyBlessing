#> asset:mob/0204_infernal_watcher/tick/event/end_frenzy
#
# つかれちゃった時の演出
#
# @within function asset:mob/0204_infernal_watcher/tick/2.tick

item replace entity @s armor.head with minecraft:stick{CustomModelData:20207}
playsound minecraft:block.soul_sand.break hostile @a ~ ~ ~ 1.5 0.75
playsound minecraft:entity.phantom.flap hostile @a ~ ~ ~ 1.5 1.5
particle large_smoke ~ ~1.5 ~ 0 0 0 0.05 5