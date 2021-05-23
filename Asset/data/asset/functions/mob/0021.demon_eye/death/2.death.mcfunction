#> asset:mob/0021.demon_eye/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0021.demon_eye/death/1.trigger

    execute at @s run kill @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1]
    execute at @s run playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    execute at @s run playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 1.5 1
    execute at @s run particle block redstone_wire ~ ~1.68 ~ 0 0 0 0 25