#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/10
#
# 波の演出と処理10
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=4.01..4.5] add Target

# 上下の判定を切り取る
    execute positioned ~-4.5 ~4 ~-4.5 run tag @e[type=#lib:living,dx=8,dy=3.5,dz=8] remove Target
    execute positioned ~-4.5 ~-4.5 ~-4.5 run tag @e[type=#lib:living,dx=8,dy=2.5,dz=8] remove Target

# 円 10
particle dust 0.2 0.2 0.65 4 ^0 ^ ^-4.5 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^0.70396 ^ ^-4.4446 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^1.39058 ^ ^-4.27975 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^2.04296 ^ ^-4.00953 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^2.64503 ^ ^-3.64058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^3.18198 ^ ^-3.18198 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^3.64058 ^ ^-2.64503 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^4.00953 ^ ^-2.04296 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^4.27975 ^ ^-1.39058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^4.4446 ^ ^-0.70396 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^4.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^4.4446 ^ ^0.70396 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^4.27975 ^ ^1.39058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^4.00953 ^ ^2.04296 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^3.64058 ^ ^2.64503 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^3.18198 ^ ^3.18198 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^2.64503 ^ ^3.64058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^2.04296 ^ ^4.00953 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^1.39058 ^ ^4.27975 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^0.70396 ^ ^4.4446 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^0 ^ ^4.5 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-0.70396 ^ ^4.4446 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-1.39058 ^ ^4.27975 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-2.04296 ^ ^4.00953 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-2.64503 ^ ^3.64058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-3.18198 ^ ^3.18198 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-3.64058 ^ ^2.64503 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-4.00953 ^ ^2.04296 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-4.27975 ^ ^1.39058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-4.4446 ^ ^0.70396 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-4.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-4.4446 ^ ^-0.70396 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-4.27975 ^ ^-1.39058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-4.00953 ^ ^-2.04296 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-3.64058 ^ ^-2.64503 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-3.18198 ^ ^-3.18198 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-2.64503 ^ ^-3.64058 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-2.04296 ^ ^-4.00953 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-1.39058 ^ ^-4.27975 0 0 0 0 1
particle dust 0.2 0.2 0.65 4 ^-0.70396 ^ ^-4.4446 0 0 0 0 1