#> asset:sacred_treasure/0647.thorn_armor/4.fullset
#
#
# @within function asset:sacred_treasure/0646.thorn_helm/3.main
# @within function asset:sacred_treasure/0647.thorn_armor/3.main
# @within function asset:sacred_treasure/0648.thorn_leggings/3.main
# @within function asset:sacred_treasure/0649.thorn_boots/3.main

# 演出
    particle dust 0 0.2 0 1.5 ~ ~0.05 ~ 3 0 3 0 250 normal @a
    particle dust 0 0.2 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a

# 周囲のmobにダメージ
    execute positioned ~-3.5 ~ ~-3.5 if entity @e[type=#lib:living,type=!player,dx=7,dy=1,dz=7] as @e[type=#lib:living,type=!player,dx=7,dy=1,dz=7] at @s run function asset:sacred_treasure/0647.thorn_armor/5.fullset_performance



