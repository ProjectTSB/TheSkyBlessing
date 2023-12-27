#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/15
#
# 波の演出と処理15
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=6.51..7] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

# 円 15
particle dust 0.2 0.2 0.95 4 ^0 ^ ^-7 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^0.7317 ^ ^-6.96165 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^1.45538 ^ ^-6.84703 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^2.16312 ^ ^-6.6574 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^2.84716 ^ ^-6.39482 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^3.5 ^ ^-6.06218 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^4.1145 ^ ^-5.66312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^4.68391 ^ ^-5.20201 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^5.20201 ^ ^-4.68391 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^5.66312 ^ ^-4.1145 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.06218 ^ ^-3.5 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.39482 ^ ^-2.84716 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.6574 ^ ^-2.16312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.84703 ^ ^-1.45538 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.96165 ^ ^-0.7317 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^7 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.96165 ^ ^0.7317 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.84703 ^ ^1.45538 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.6574 ^ ^2.16312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.39482 ^ ^2.84716 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^6.06218 ^ ^3.5 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^5.66312 ^ ^4.1145 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^5.20201 ^ ^4.68391 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^4.68391 ^ ^5.20201 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^4.1145 ^ ^5.66312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^3.5 ^ ^6.06218 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^2.84716 ^ ^6.39482 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^2.16312 ^ ^6.6574 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^1.45538 ^ ^6.84703 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^0.7317 ^ ^6.96165 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^0 ^ ^7 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-0.7317 ^ ^6.96165 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-1.45538 ^ ^6.84703 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-2.16312 ^ ^6.6574 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-2.84716 ^ ^6.39482 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-3.5 ^ ^6.06218 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-4.1145 ^ ^5.66312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-4.68391 ^ ^5.20201 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-5.20201 ^ ^4.68391 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-5.66312 ^ ^4.1145 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.06218 ^ ^3.5 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.39482 ^ ^2.84716 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.6574 ^ ^2.16312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.84703 ^ ^1.45538 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.96165 ^ ^0.7317 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-7 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.96165 ^ ^-0.7317 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.84703 ^ ^-1.45538 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.6574 ^ ^-2.16312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.39482 ^ ^-2.84716 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-6.06218 ^ ^-3.5 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-5.66312 ^ ^-4.1145 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-5.20201 ^ ^-4.68391 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-4.68391 ^ ^-5.20201 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-4.1145 ^ ^-5.66312 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-3.5 ^ ^-6.06218 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-2.84716 ^ ^-6.39482 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-2.16312 ^ ^-6.6574 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-1.45538 ^ ^-6.84703 0 0 0 0 1
particle dust 0.2 0.2 0.95 4 ^-0.7317 ^ ^-6.96165 0 0 0 0 1