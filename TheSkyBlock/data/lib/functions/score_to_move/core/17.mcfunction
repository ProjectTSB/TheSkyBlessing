#> lib:score_to_move/core/17
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/18

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/16
execute if score $Move Lib matches ..-1 positioned ^ ^ ^13.1072 run function lib:score_to_move/core/16
