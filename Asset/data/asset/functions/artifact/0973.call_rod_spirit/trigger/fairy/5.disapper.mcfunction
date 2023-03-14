#> asset:artifact/0973.call_rod_spirit/trigger/fairy/5.disapper
#
# 消滅処理
#
# @within function asset:artifact/0973.call_rod_spirit/trigger/fairy/3.main

# 演出
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.05 10
    particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 10

# キル
    kill @s