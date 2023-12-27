#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/7
#
# 波の演出と処理7
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=2.51..3] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

# 円 7
particle dust 0.2 0.2 0.5 4 ^0 ^ ^-3 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^0.66756 ^ ^-2.92478 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^1.30165 ^ ^-2.70291 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^1.87047 ^ ^-2.34549 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^2.34549 ^ ^-1.87047 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^2.70291 ^ ^-1.30165 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^2.92478 ^ ^-0.66756 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^3 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^2.92478 ^ ^0.66756 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^2.70291 ^ ^1.30165 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^2.34549 ^ ^1.87047 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^1.87047 ^ ^2.34549 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^1.30165 ^ ^2.70291 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^0.66756 ^ ^2.92478 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^0 ^ ^3 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-0.66756 ^ ^2.92478 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-1.30165 ^ ^2.70291 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-1.87047 ^ ^2.34549 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-2.34549 ^ ^1.87047 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-2.70291 ^ ^1.30165 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-2.92478 ^ ^0.66756 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-3 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-2.92478 ^ ^-0.66756 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-2.70291 ^ ^-1.30165 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-2.34549 ^ ^-1.87047 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-1.87047 ^ ^-2.34549 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-1.30165 ^ ^-2.70291 0 0 0 0 1
particle dust 0.2 0.2 0.5 4 ^-0.66756 ^ ^-2.92478 0 0 0 0 1