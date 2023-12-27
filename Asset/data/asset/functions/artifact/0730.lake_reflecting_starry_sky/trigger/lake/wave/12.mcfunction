#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/12
#
# 波の演出と処理12
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=5.01..5.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

# 円 12
particle dust 0.2 0.2 0.75 4 ^0 ^ ^-5.5 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^0.71789 ^ ^-5.45295 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^1.4235 ^ ^-5.31259 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^2.10476 ^ ^-5.08134 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^2.75 ^ ^-4.76314 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^3.34819 ^ ^-4.36344 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^3.88909 ^ ^-3.88909 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^4.36344 ^ ^-3.34819 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^4.76314 ^ ^-2.75 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^5.08134 ^ ^-2.10476 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^5.31259 ^ ^-1.4235 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^5.45295 ^ ^-0.71789 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^5.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^5.45295 ^ ^0.71789 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^5.31259 ^ ^1.4235 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^5.08134 ^ ^2.10476 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^4.76314 ^ ^2.75 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^4.36344 ^ ^3.34819 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^3.88909 ^ ^3.88909 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^3.34819 ^ ^4.36344 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^2.75 ^ ^4.76314 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^2.10476 ^ ^5.08134 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^1.4235 ^ ^5.31259 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^0.71789 ^ ^5.45295 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^0 ^ ^5.5 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-0.71789 ^ ^5.45295 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-1.4235 ^ ^5.31259 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-2.10476 ^ ^5.08134 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-2.75 ^ ^4.76314 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-3.34819 ^ ^4.36344 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-3.88909 ^ ^3.88909 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-4.36344 ^ ^3.34819 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-4.76314 ^ ^2.75 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-5.08134 ^ ^2.10476 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-5.31259 ^ ^1.4235 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-5.45295 ^ ^0.71789 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-5.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-5.45295 ^ ^-0.71789 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-5.31259 ^ ^-1.4235 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-5.08134 ^ ^-2.10476 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-4.76314 ^ ^-2.75 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-4.36344 ^ ^-3.34819 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-3.88909 ^ ^-3.88909 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-3.34819 ^ ^-4.36344 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-2.75 ^ ^-4.76314 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-2.10476 ^ ^-5.08134 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-1.4235 ^ ^-5.31259 0 0 0 0 1
particle dust 0.2 0.2 0.75 4 ^-0.71789 ^ ^-5.45295 0 0 0 0 1