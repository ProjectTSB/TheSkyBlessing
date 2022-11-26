#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/2
#
# 波の演出と処理2
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=..0.5] add Target

# 下の判定を切り取る
    execute positioned ~-0.5 ~-1.5 ~-0.5 run tag @e[type=#lib:living,dx=0,dy=0,dz=0] remove Target

# 円 2
particle dust 0.2 0.2 0.25 4 ^0 ^ ^-0.5 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0.35355 ^ ^-0.35355 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0.35355 ^ ^0.35355 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0 ^ ^0.5 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^-0.35355 ^ ^0.35355 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^-0.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^-0.35355 ^ ^-0.35355 0 0 0 0 1