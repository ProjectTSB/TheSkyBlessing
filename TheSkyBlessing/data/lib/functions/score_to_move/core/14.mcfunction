#> lib:score_to_move/core/14
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/15

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/13
execute if score $Move Lib matches ..-1 positioned ^ ^ ^1.6384 run function lib:score_to_move/core/13
