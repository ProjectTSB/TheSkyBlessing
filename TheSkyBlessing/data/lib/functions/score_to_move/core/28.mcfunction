#> lib:score_to_move/core/28
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/29

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/27
execute if score $Move Lib matches ..-1 positioned ^ ^ ^26843.5456 run function lib:score_to_move/core/27
