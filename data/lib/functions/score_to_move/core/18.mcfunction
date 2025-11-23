#> lib:score_to_move/core/18
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/19

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/17
execute if score $Move Lib matches ..-1 positioned ^ ^ ^26.2144 run function lib:score_to_move/core/17
