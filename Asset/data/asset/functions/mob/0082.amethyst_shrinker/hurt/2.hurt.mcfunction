#> asset:mob/0082.amethyst_shrinker/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0082.amethyst_shrinker/hurt/1.trigger

# 演出
    playsound block.amethyst_block.step master @a ~ ~ ~ 1.0 0.8 0
    particle minecraft:end_rod ~ ~1.2 ~ 1 0.5 1 0 10 normal @a
    particle block amethyst_cluster ~ ~1.2 ~ 0.25 0.5 0.25 0 20 normal @a