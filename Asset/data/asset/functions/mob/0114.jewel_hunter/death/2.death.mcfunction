#> asset:mob/0114.jewel_hunter/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0114.jewel_hunter/death/1.trigger

# 全部確率で宝石系ドロップ
    execute if predicate lib:random_pass_per/50 run summon item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:16b}}
    execute if predicate lib:random_pass_per/30 run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_block",Count:16b}}
    execute if predicate lib:random_pass_per/40 run summon item ~ ~ ~ {Item:{id:"minecraft:gold_block",Count:16b}}
    execute if predicate lib:random_pass_per/30 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_block",Count:16b}}
