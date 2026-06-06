#> lib:bounding_line/core/binary_search/0
#
# @within function lib:bounding_line/core/*

# ヒット済みエンティティを除外
    execute if score @s lib_bounding_line matches 0.. run return fail

# 残り距離コピー
    scoreboard players operation #length_bs lib_bounding_line = #length lib_bounding_line

# dxyzで判定
    execute positioned ^ ^ ^-4 rotated as 0-0-0-0-0 positioned ^ ^ ^6.928203230275509 unless entity @s[dx=7,dy=7,dz=7] run return fail
    execute positioned ^ ^ ^4 rotated as 0-0-0-0-0 positioned ^ ^ ^-6.928203230275509 unless entity @s[dx=7,dy=7,dz=7] run return fail

# 二分探索手前
    execute positioned ~4 ~4 ~4 if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box5_back positioned ^ ^ ^-2 run return run function lib:bounding_line/core/binary_search/1

# 残り距離減算
    scoreboard players remove #length_bs lib_bounding_line 4096

# 二分探索奥
    execute positioned ~4 ~4 ~4 if score #length_bs lib_bounding_line matches 1.. if function lib:bounding_line/core/box/box5_front positioned ^ ^ ^2 run return run function lib:bounding_line/core/binary_search/1
