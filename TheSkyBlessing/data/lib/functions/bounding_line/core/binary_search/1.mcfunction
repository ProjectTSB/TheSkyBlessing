#> lib:bounding_line/core/binary_search/1
#
# @within function lib:bounding_line/core/binary_search/*

# 二分探索手前
    execute if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box3_back positioned ^ ^ ^-1 run return run function lib:bounding_line/core/binary_search/2

# 残り距離減算
    scoreboard players remove #length_bs lib_bounding_line 2048

# 二分探索奥
    execute if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box3_front positioned ^ ^ ^1 run return run function lib:bounding_line/core/binary_search/2
