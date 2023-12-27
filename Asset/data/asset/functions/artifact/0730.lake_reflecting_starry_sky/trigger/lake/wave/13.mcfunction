#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/13
#
# 波の演出と処理13
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=5.5..6] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

# 円 13
particle dust 0.2 0.2 0.8 4 ^0 ^ ^-6 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^0.72322 ^ ^-5.95625 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^1.43589 ^ ^-5.82565 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^2.12763 ^ ^-5.6101 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^2.78834 ^ ^-5.31274 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^3.40839 ^ ^-4.9379 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^3.97874 ^ ^-4.49106 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^4.49106 ^ ^-3.97874 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^4.9379 ^ ^-3.40839 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.31274 ^ ^-2.78834 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.6101 ^ ^-2.12763 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.82565 ^ ^-1.43589 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.95625 ^ ^-0.72322 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^6 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.95625 ^ ^0.72322 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.82565 ^ ^1.43589 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.6101 ^ ^2.12763 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^5.31274 ^ ^2.78834 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^4.9379 ^ ^3.40839 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^4.49106 ^ ^3.97874 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^3.97874 ^ ^4.49106 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^3.40839 ^ ^4.9379 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^2.78834 ^ ^5.31274 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^2.12763 ^ ^5.6101 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^1.43589 ^ ^5.82565 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^0.72322 ^ ^5.95625 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^0 ^ ^6 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-0.72322 ^ ^5.95625 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-1.43589 ^ ^5.82565 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-2.12763 ^ ^5.6101 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-2.78834 ^ ^5.31274 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-3.40839 ^ ^4.9379 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-3.97874 ^ ^4.49106 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-4.49106 ^ ^3.97874 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-4.9379 ^ ^3.40839 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.31274 ^ ^2.78834 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.6101 ^ ^2.12763 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.82565 ^ ^1.43589 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.95625 ^ ^0.72322 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-6 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.95625 ^ ^-0.72322 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.82565 ^ ^-1.43589 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.6101 ^ ^-2.12763 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-5.31274 ^ ^-2.78834 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-4.9379 ^ ^-3.40839 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-4.49106 ^ ^-3.97874 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-3.97874 ^ ^-4.49106 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-3.40839 ^ ^-4.9379 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-2.78834 ^ ^-5.31274 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-2.12763 ^ ^-5.6101 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-1.43589 ^ ^-5.82565 0 0 0 0 1
particle dust 0.2 0.2 0.8 4 ^-0.72322 ^ ^-5.95625 0 0 0 0 1