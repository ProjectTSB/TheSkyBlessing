#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/6
#
# 波の演出と処理6
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=2.01..2.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

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