#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/5
#
# 波の演出と処理5
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=1.51..2] add Target

# 上下の判定を切り取る
    execute positioned ~-2 ~4 ~-2 run tag @e[type=#lib:living,dx=3,dy=1,dz=3] remove Target
    execute positioned ~-2 ~-2 ~-2 run tag @e[type=#lib:living,dx=3,dy=0,dz=3] remove Target

# 円 5
particle dust 0.2 0.2 0.4 4 ^0 ^ ^-2 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^0.61803 ^ ^-1.90211 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^1.17557 ^ ^-1.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^1.61803 ^ ^-1.17557 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^1.90211 ^ ^-0.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^2 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^1.90211 ^ ^0.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^1.61803 ^ ^1.17557 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^1.17557 ^ ^1.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^0.61803 ^ ^1.90211 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^0 ^ ^2 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-0.61803 ^ ^1.90211 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-1.17557 ^ ^1.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-1.61803 ^ ^1.17557 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-1.90211 ^ ^0.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-2 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-1.90211 ^ ^-0.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-1.61803 ^ ^-1.17557 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-1.17557 ^ ^-1.61803 0 0 0 0 1
particle dust 0.2 0.2 0.4 4 ^-0.61803 ^ ^-1.90211 0 0 0 0 1