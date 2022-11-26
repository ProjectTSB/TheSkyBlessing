#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/3
#
# 波の演出と処理3
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=0.51..1] add Target

# 上下の判定を切り取る
    execute positioned ~-1 ~-1.5 ~-1 run tag @e[type=#lib:living,dx=1,dy=0,dz=1] remove Target

# 円 3
particle dust 0.2 0.2 0.3 4 ^0 ^ ^-1 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.5 ^ ^-0.86603 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.86603 ^ ^-0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^1 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.86603 ^ ^0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.5 ^ ^0.86603 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0 ^ ^1 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.5 ^ ^0.86603 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.86603 ^ ^0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-1 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.86603 ^ ^-0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.5 ^ ^-0.86603 0 0 0 0 1