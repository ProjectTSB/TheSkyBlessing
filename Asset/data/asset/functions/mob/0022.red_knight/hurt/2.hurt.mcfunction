#> asset:mob/0022.red_knight/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0022.red_knight/hurt/1.trigger

# 演出
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:block.soul_sand.break hostile @a ~ ~ ~ 1.5 0.75