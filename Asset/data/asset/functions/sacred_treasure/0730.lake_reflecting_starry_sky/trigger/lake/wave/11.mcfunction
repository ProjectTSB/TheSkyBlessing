#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/11
#
# 波の演出と処理11
#
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,distance=4.51..5] add Target

# 上下の判定を切り取る
    execute positioned ~-5 ~4 ~-5 run tag @e[type=#lib:living,dx=9,dy=4,dz=9] remove Target
    execute positioned ~-5 ~-5 ~-5 run tag @e[type=#lib:living,dx=9,dy=3,dz=9] remove Target

# 円 11
particle dust 0.2 0.2 0.7 4 ^0 ^ ^-5 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^0.71157 ^ ^-4.94911 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^1.40866 ^ ^-4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.07708 ^ ^-4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.7032 ^ ^-4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.2743 ^ ^-3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.77875 ^ ^-3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.20627 ^ ^-2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.54816 ^ ^-2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.79746 ^ ^-1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.94911 ^ ^-0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.94911 ^ ^0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.79746 ^ ^1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.54816 ^ ^2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^4.20627 ^ ^2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.77875 ^ ^3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^3.2743 ^ ^3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.7032 ^ ^4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^2.07708 ^ ^4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^1.40866 ^ ^4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^0.71157 ^ ^4.94911 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^0 ^ ^5 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-0.71157 ^ ^4.94911 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-1.40866 ^ ^4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.07708 ^ ^4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.7032 ^ ^4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.2743 ^ ^3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.77875 ^ ^3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.20627 ^ ^2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.54816 ^ ^2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.79746 ^ ^1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.94911 ^ ^0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.94911 ^ ^-0.71157 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.79746 ^ ^-1.40866 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.54816 ^ ^-2.07708 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-4.20627 ^ ^-2.7032 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.77875 ^ ^-3.2743 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-3.2743 ^ ^-3.77875 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.7032 ^ ^-4.20627 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-2.07708 ^ ^-4.54816 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-1.40866 ^ ^-4.79746 0 0 0 0 1
particle dust 0.2 0.2 0.7 4 ^-0.71157 ^ ^-4.94911 0 0 0 0 1