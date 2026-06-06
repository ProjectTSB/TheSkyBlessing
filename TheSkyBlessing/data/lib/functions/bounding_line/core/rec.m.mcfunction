#> lib:bounding_line/core/rec.m
#
# @within function lib:bounding_line/
# @within function lib:bounding_line/core/rec.m

# 二分探索
    $execute as $(selector_variable)[dx=7,dy=7,dz=7,$(selector_arguments)] run function lib:bounding_line/core/binary_search/0

# 残り距離減算
    scoreboard players remove #length lib_bounding_line 8192

# 再帰
    execute if score #length lib_bounding_line matches 1.. positioned ^ ^ ^8 run function lib:bounding_line/core/rec.m with storage lib: BoundingLine.Macro
