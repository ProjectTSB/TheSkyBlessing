#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/7
#
# 波の演出と処理7
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=2.51..3] add Target

# 上下の判定を切り取る
    execute positioned ~-3 ~4 ~-3 run tag @e[type=#lib:living,dx=5,dy=2,dz=5] remove Target
    execute positioned ~-3 ~-3 ~-3 run tag @e[type=#lib:living,dx=5,dy=1,dz=5] remove Target

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