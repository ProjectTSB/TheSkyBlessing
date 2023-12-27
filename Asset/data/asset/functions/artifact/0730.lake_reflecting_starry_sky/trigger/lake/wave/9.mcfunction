#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/wave/9
#
# 波の演出と処理9
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    execute as @e[type=#lib:living,tag=Enemy,distance=3.51..4] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=1,dz=14] run tag @s add Target

# 円 9
particle dust 0.2 0.2 0.6 4 ^0 ^ ^-4 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^0.69459 ^ ^-3.93923 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^1.36808 ^ ^-3.75877 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^2 ^ ^-3.4641 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^2.57115 ^ ^-3.06418 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.06418 ^ ^-2.57115 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.4641 ^ ^-2 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.75877 ^ ^-1.36808 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.93923 ^ ^-0.69459 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^4 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.93923 ^ ^0.69459 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.75877 ^ ^1.36808 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.4641 ^ ^2 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^3.06418 ^ ^2.57115 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^2.57115 ^ ^3.06418 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^2 ^ ^3.4641 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^1.36808 ^ ^3.75877 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^0.69459 ^ ^3.93923 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^0 ^ ^4 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-0.69459 ^ ^3.93923 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-1.36808 ^ ^3.75877 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-2 ^ ^3.4641 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-2.57115 ^ ^3.06418 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.06418 ^ ^2.57115 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.4641 ^ ^2 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.75877 ^ ^1.36808 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.93923 ^ ^0.69459 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-4 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.93923 ^ ^-0.69459 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.75877 ^ ^-1.36808 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.4641 ^ ^-2 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-3.06418 ^ ^-2.57115 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-2.57115 ^ ^-3.06418 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-2 ^ ^-3.4641 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-1.36808 ^ ^-3.75877 0 0 0 0 1
particle dust 0.2 0.2 0.6 4 ^-0.69459 ^ ^-3.93923 0 0 0 0 1