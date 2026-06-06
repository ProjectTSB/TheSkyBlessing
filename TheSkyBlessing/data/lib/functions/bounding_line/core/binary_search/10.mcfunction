#> lib:bounding_line/core/binary_search/10
#
# @within function lib:bounding_line/core/binary_search/*

# 二分探索手前
    execute if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box1_back positioned ^ ^ ^-0.001953125 run return run function lib:bounding_line/core/binary_search/11

# 残り距離減算
    scoreboard players remove #length_bs lib_bounding_line 4

# 二分探索奥
    execute if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box1_front positioned ^ ^ ^0.001953125 run return run function lib:bounding_line/core/binary_search/11
