#> lib:score_to_move/core/1
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/2

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/0
execute if score $Move Lib matches ..-1 positioned ^ ^ ^0.0002 run function lib:score_to_move/core/0
