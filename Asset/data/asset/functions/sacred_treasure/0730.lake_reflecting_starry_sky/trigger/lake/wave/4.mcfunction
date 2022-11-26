#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/4
#
# 波の演出と処理4
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=1.01..1.5] add Target

# 上下の判定を切り取る
    #execute positioned ~-1.5 ~1.5 ~-1.5 run tag @e[type=#lib:living,dx=3,dy=1,dz=3] remove Target
    execute positioned ~-1.5 ~-1.5 ~-1.5 run tag @e[type=#lib:living,dx=2,dy=0,dz=2] remove Target

# 円 4
particle dust 0.2 0.2 0.35 4 ^0 ^ ^-1.5 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^0.57403 ^ ^-1.38582 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^1.06066 ^ ^-1.06066 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^1.38582 ^ ^-0.57403 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^1.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^1.38582 ^ ^0.57403 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^1.06066 ^ ^1.06066 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^0.57403 ^ ^1.38582 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^0 ^ ^1.5 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^-0.57403 ^ ^1.38582 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^-1.06066 ^ ^1.06066 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^-1.38582 ^ ^0.57403 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^-1.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^-1.38582 ^ ^-0.57403 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^-1.06066 ^ ^-1.06066 0 0 0 0 1
particle dust 0.2 0.2 0.35 4 ^-0.57403 ^ ^-1.38582 0 0 0 0 1