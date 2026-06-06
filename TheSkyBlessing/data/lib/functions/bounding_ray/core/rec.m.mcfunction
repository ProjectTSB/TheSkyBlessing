#> lib:bounding_ray/core/rec.m
#
# @within function lib:bounding_ray/
# @within function lib:bounding_ray/core/rec.m


# 二分探索
    $execute as $(selector_variable)[dx=7,dy=7,dz=7,$(selector_arguments)] if function lib:bounding_line/core/binary_search/0 run function lib:bounding_ray/core/select_max

# 残り距離減算
    scoreboard players remove #length lib_bounding_line 8192

# 再帰
    execute if score #length lib_bounding_line matches 1.. positioned ^ ^ ^8 run function lib:bounding_ray/core/rec.m with storage lib: BoundingLine.Macro
