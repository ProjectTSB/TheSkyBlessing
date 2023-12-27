#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/14
#
# 波の演出と処理14
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=6.01..6.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

# 円 14
particle dust 0.2 0.2 0.9 4 ^0 ^ ^-6.5 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^0.72777 ^ ^-6.45913 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^1.44639 ^ ^-6.33703 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^2.14681 ^ ^-6.13524 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^2.82024 ^ ^-5.8563 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^3.45821 ^ ^-5.50371 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^4.05268 ^ ^-5.0819 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^4.59619 ^ ^-4.59619 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^5.0819 ^ ^-4.05268 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^5.50371 ^ ^-3.45821 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^5.8563 ^ ^-2.82024 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^6.13524 ^ ^-2.14681 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^6.33703 ^ ^-1.44639 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^6.45913 ^ ^-0.72777 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^6.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^6.45913 ^ ^0.72777 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^6.33703 ^ ^1.44639 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^6.13524 ^ ^2.14681 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^5.8563 ^ ^2.82024 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^5.50371 ^ ^3.45821 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^5.0819 ^ ^4.05268 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^4.59619 ^ ^4.59619 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^4.05268 ^ ^5.0819 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^3.45821 ^ ^5.50371 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^2.82024 ^ ^5.8563 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^2.14681 ^ ^6.13524 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^1.44639 ^ ^6.33703 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^0.72777 ^ ^6.45913 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^0 ^ ^6.5 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-0.72777 ^ ^6.45913 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-1.44639 ^ ^6.33703 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-2.14681 ^ ^6.13524 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-2.82024 ^ ^5.8563 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-3.45821 ^ ^5.50371 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-4.05268 ^ ^5.0819 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-4.59619 ^ ^4.59619 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-5.0819 ^ ^4.05268 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-5.50371 ^ ^3.45821 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-5.8563 ^ ^2.82024 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-6.13524 ^ ^2.14681 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-6.33703 ^ ^1.44639 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-6.45913 ^ ^0.72777 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-6.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-6.45913 ^ ^-0.72777 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-6.33703 ^ ^-1.44639 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-6.13524 ^ ^-2.14681 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-5.8563 ^ ^-2.82024 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-5.50371 ^ ^-3.45821 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-5.0819 ^ ^-4.05268 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-4.59619 ^ ^-4.59619 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-4.05268 ^ ^-5.0819 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-3.45821 ^ ^-5.50371 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-2.82024 ^ ^-5.8563 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-2.14681 ^ ^-6.13524 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-1.44639 ^ ^-6.33703 0 0 0 0 1
particle dust 0.2 0.2 0.9 4 ^-0.72777 ^ ^-6.45913 0 0 0 0 1