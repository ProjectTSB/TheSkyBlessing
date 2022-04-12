#> lib:score_to_move/core/30
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/29
execute if score $Move Lib matches ..-1 positioned ^ ^ ^107374.1824 run function lib:score_to_move/core/29
