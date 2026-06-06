#> lib:bounding_ray/core/update_max
#
# @within function lib:bounding_line/core/binary_search/hit.m

# 最大探索距離を現在の残探索距離で引く
    scoreboard players operation #length lib_bounding_line -= #length_bs lib_bounding_line

# 現在の最大探索距離をエンティティに保存
    scoreboard players operation @s lib_bounding_line = #length lib_bounding_line

# 成功戻り値
    return 1
