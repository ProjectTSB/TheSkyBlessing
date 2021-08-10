#> asset:mob/0082.amethyst_shrinker/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0082.amethyst_shrinker/attack/1.trigger

# 演出
    playsound block.amethyst_block.step master @a ~ ~ ~ 1.0 1.2 0
    particle minecraft:end_rod ~ ~1.2 ~ 1 0.5 1 0 20 normal @a