#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/8
#
# 波の演出と処理8
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=3.01..3.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

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