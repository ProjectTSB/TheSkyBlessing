#> asset:mob/0204_infernal_watcher/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0204_infernal_watcher/hurt/1.trigger

playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
playsound minecraft:block.soul_sand.break hostile @a ~ ~ ~ 1.5 0.75
particle block crimson_hyphae ~ ~1.68 ~ 0 0 0 0 25

# HurtTimeをスコア化したら軽いのでは？
    scoreboard players set @s 5O.HurtTime 20
    data modify entity @s[scores={5O.MoveTime=..39}] NoAI set value 0b
