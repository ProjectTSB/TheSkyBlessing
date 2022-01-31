#> lib:score_to_move/core/19
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/20

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/18
execute if score $Move Lib matches ..-1 positioned ^ ^ ^52.4288 run function lib:score_to_move/core/18
