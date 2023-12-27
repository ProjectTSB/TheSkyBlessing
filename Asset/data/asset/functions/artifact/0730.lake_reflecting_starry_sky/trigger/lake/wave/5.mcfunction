#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/5
#
# 波の演出と処理5
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=1.51..2] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=4,dz=14] run tag @s add Target

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