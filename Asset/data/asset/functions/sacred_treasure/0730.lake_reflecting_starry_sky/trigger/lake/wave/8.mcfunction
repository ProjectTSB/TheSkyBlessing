#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/8
#
# 波の演出と処理8
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=3.01..3.5] add Target

# 上下の判定を切り取る
    execute positioned ~-3.5 ~4 ~-3.5 run tag @e[type=#lib:living,dx=6,dy=2.5,dz=6] remove Target
    execute positioned ~-3.5 ~-3.5 ~-3.5 run tag @e[type=#lib:living,dx=6,dy=1.5,dz=6] remove Target

# 円 8
particle dust 0.2 0.2 0.55 4 ^0 ^ ^-3.5 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^0.68282 ^ ^-3.43275 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^1.33939 ^ ^-3.23358 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^1.9445 ^ ^-2.91014 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^2.47487 ^ ^-2.47487 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^2.91014 ^ ^-1.9445 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^3.23358 ^ ^-1.33939 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^3.43275 ^ ^-0.68282 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^3.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^3.43275 ^ ^0.68282 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^3.23358 ^ ^1.33939 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^2.91014 ^ ^1.9445 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^2.47487 ^ ^2.47487 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^1.9445 ^ ^2.91014 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^1.33939 ^ ^3.23358 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^0.68282 ^ ^3.43275 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^0 ^ ^3.5 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-0.68282 ^ ^3.43275 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-1.33939 ^ ^3.23358 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-1.9445 ^ ^2.91014 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-2.47487 ^ ^2.47487 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-2.91014 ^ ^1.9445 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-3.23358 ^ ^1.33939 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-3.43275 ^ ^0.68282 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-3.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-3.43275 ^ ^-0.68282 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-3.23358 ^ ^-1.33939 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-2.91014 ^ ^-1.9445 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-2.47487 ^ ^-2.47487 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-1.9445 ^ ^-2.91014 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-1.33939 ^ ^-3.23358 0 0 0 0 1
particle dust 0.2 0.2 0.55 4 ^-0.68282 ^ ^-3.43275 0 0 0 0 1