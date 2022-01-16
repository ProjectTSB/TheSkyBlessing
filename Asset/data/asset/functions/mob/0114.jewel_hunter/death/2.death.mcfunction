#> asset:mob/0114.jewel_hunter/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0114.jewel_hunter/death/1.trigger

# 演出
    particle minecraft:dust 8 1 8 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 50 normal @a
    playsound minecraft:block.amethyst_cluster.hit hostile @a ~ ~ ~ 2 0 0

# 全部確率で宝石系ドロップ
    execute if predicate lib:random_pass_per/30 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:16b}}
    execute if predicate lib:random_pass_per/30 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_block",Count:16b}}
    execute if predicate lib:random_pass_per/30 run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_block",Count:16b}}
    execute if predicate lib:random_pass_per/30 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_block",Count:16b}}

