#> lib:score_to_move/core/20
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/21

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/19
execute if score $Move Lib matches ..-1 positioned ^ ^ ^104.8576 run function lib:score_to_move/core/19
