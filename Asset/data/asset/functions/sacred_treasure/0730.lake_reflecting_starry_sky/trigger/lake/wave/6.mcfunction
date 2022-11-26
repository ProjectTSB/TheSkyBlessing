#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/6
#
# 波の演出と処理6
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=2.01..2.5] add Target

# 上下の判定を切り取る
    execute positioned ~-2.5 ~4 ~-2.5 run tag @e[type=#lib:living,dx=4,dy=1.5,dz=4] remove Target
    execute positioned ~-2.5 ~-2.5 ~-2.5 run tag @e[type=#lib:living,dx=4,dy=0.5,dz=4] remove Target

# 円 6
particle dust 0.2 0.2 0.45 4 ^0 ^ ^-2.5 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^0.64705 ^ ^-2.41481 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^1.25 ^ ^-2.16506 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^1.76777 ^ ^-1.76777 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^2.16506 ^ ^-1.25 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^2.41481 ^ ^-0.64705 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^2.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^2.41481 ^ ^0.64705 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^2.16506 ^ ^1.25 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^1.76777 ^ ^1.76777 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^1.25 ^ ^2.16506 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^0.64705 ^ ^2.41481 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^0 ^ ^2.5 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-0.64705 ^ ^2.41481 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-1.25 ^ ^2.16506 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-1.76777 ^ ^1.76777 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-2.16506 ^ ^1.25 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-2.41481 ^ ^0.64705 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-2.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-2.41481 ^ ^-0.64705 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-2.16506 ^ ^-1.25 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-1.76777 ^ ^-1.76777 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-1.25 ^ ^-2.16506 0 0 0 0 1
particle dust 0.2 0.2 0.45 4 ^-0.64705 ^ ^-2.41481 0 0 0 0 1