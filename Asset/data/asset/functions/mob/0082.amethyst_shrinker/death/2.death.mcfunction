#> asset:mob/0082.amethyst_shrinker/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0082.amethyst_shrinker/death/1.trigger

# 演出
    particle block amethyst_cluster ~ ~1.2 ~ 0.25 0.5 0.25 0 20 normal @a
    particle minecraft:end_rod ~ ~1.2 ~ 1 0.5 1 0 50 normal @a
    playsound block.amethyst_block.step master @a ~ ~ ~ 1 0.8 0
    playsound block.amethyst_block.step master @a ~ ~ ~ 1 1 0
    playsound block.amethyst_block.step master @a ~ ~ ~ 1 1.2 0

# アメジストを設置
    fill ~ ~ ~ ~ ~ ~ budding_amethyst replace #lib:air