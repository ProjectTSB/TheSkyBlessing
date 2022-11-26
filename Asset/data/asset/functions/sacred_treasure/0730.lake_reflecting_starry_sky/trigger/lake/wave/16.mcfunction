#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/16
#
# 波の演出と処理16
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=7.01..7.5] add Target

# 上下の判定を切り取る
    execute positioned ~-7.5 ~4 ~-7.5 run tag @e[type=#lib:living,dx=14,dy=6.5,dz=14] remove Target
    execute positioned ~-7.5 ~-7.5 ~-7.5 run tag @e[type=#lib:living,dx=14,dy=5.5,dz=14] remove Target

# 円 16
particle dust 0.2 0.2 1 4 ^0 ^ ^-7.5 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^0.73513 ^ ^-7.46389 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^1.46318 ^ ^-7.35589 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^2.17714 ^ ^-7.17705 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^2.87013 ^ ^-6.9291 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^3.53548 ^ ^-6.61441 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^4.16678 ^ ^-6.23602 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^4.75795 ^ ^-5.79758 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^5.3033 ^ ^-5.3033 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^5.79758 ^ ^-4.75795 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^6.23602 ^ ^-4.16678 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^6.61441 ^ ^-3.53548 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^6.9291 ^ ^-2.87013 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^7.17705 ^ ^-2.17714 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^7.35589 ^ ^-1.46318 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^7.46389 ^ ^-0.73513 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^7.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^7.46389 ^ ^0.73513 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^7.35589 ^ ^1.46318 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^7.17705 ^ ^2.17714 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^6.9291 ^ ^2.87013 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^6.61441 ^ ^3.53548 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^6.23602 ^ ^4.16678 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^5.79758 ^ ^4.75795 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^5.3033 ^ ^5.3033 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^4.75795 ^ ^5.79758 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^4.16678 ^ ^6.23602 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^3.53548 ^ ^6.61441 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^2.87013 ^ ^6.9291 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^2.17714 ^ ^7.17705 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^1.46318 ^ ^7.35589 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^0.73513 ^ ^7.46389 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^0 ^ ^7.5 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-0.73513 ^ ^7.46389 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-1.46318 ^ ^7.35589 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-2.17714 ^ ^7.17705 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-2.87013 ^ ^6.9291 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-3.53548 ^ ^6.61441 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-4.16678 ^ ^6.23602 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-4.75795 ^ ^5.79758 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-5.3033 ^ ^5.3033 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-5.79758 ^ ^4.75795 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-6.23602 ^ ^4.16678 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-6.61441 ^ ^3.53548 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-6.9291 ^ ^2.87013 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-7.17705 ^ ^2.17714 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-7.35589 ^ ^1.46318 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-7.46389 ^ ^0.73513 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-7.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-7.46389 ^ ^-0.73513 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-7.35589 ^ ^-1.46318 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-7.17705 ^ ^-2.17714 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-6.9291 ^ ^-2.87013 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-6.61441 ^ ^-3.53548 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-6.23602 ^ ^-4.16678 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-5.79758 ^ ^-4.75795 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-5.3033 ^ ^-5.3033 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-4.75795 ^ ^-5.79758 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-4.16678 ^ ^-6.23602 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-3.53548 ^ ^-6.61441 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-2.87013 ^ ^-6.9291 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-2.17714 ^ ^-7.17705 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-1.46318 ^ ^-7.35589 0 0 0 0 1
particle dust 0.2 0.2 1 4 ^-0.73513 ^ ^-7.46389 0 0 0 0 1