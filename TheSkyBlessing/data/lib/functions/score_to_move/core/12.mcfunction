#> lib:score_to_move/core/12
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/13

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/11
execute if score $Move Lib matches ..-1 positioned ^ ^ ^0.4096 run function lib:score_to_move/core/11
