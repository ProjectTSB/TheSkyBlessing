#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/4
#
# 波の演出と処理4
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=1.01..1.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=4,dz=14] run tag @s add Target

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