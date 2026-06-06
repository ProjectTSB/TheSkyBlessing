#> lib:bounding_line/core/binary_search/2
#
# @within function lib:bounding_line/core/binary_search/*

# 二分探索手前
    execute if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box2_back positioned ^ ^ ^-0.5 run return run function lib:bounding_line/core/binary_search/3

# 残り距離減算
    scoreboard players remove #length_bs lib_bounding_line 1024

# 二分探索奥
    execute if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box2_front positioned ^ ^ ^0.5 run return run function lib:bounding_line/core/binary_search/3
