#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/9
#
# 波の演出と処理9
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=3.51..4] add Target

# 上下の判定を切り取る
    execute positioned ~-4 ~4 ~-4 run tag @e[type=#lib:living,dx=7,dy=3,dz=7] remove Target
    execute positioned ~-4 ~-4 ~-4 run tag @e[type=#lib:living,dx=7,dy=2,dz=7] remove Target

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