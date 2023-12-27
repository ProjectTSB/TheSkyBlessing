#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/3
#
# 波の演出と処理3
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=0.51..1] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=4,dz=14] run tag @s add Target

# 円 3
particle dust 0.2 0.2 0.3 4 ^0 ^ ^-1 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.5 ^ ^-0.86603 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.86603 ^ ^-0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^1 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.86603 ^ ^0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0.5 ^ ^0.86603 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^0 ^ ^1 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.5 ^ ^0.86603 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.86603 ^ ^0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-1 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.86603 ^ ^-0.5 0 0 0 0 1
particle dust 0.2 0.2 0.3 4 ^-0.5 ^ ^-0.86603 0 0 0 0 1