#> asset:artifact/0647.thorn_armor/trigger/8.exetend_thorn
#
# 棘が伸びる演出
#
# @within function
#   asset:artifact/0647.thorn_armor/trigger/7.hurt
#   asset:artifact/0647.thorn_armor/trigger/8.exetend_thorn

# 演出
    particle block oak_leaves ~ ~ ~ 0 0 0 0 1 normal @a
    particle dust 0 0.2 0 1.4 ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
    playsound minecraft:block.sweet_berry_bush.break player @a ~ ~ ~ 0.2 1 0

# 再帰処理
    execute if entity @s[distance=..50] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,tag=Attacker,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^0.5 run function asset:artifact/0647.thorn_armor/trigger/8.exetend_thorn