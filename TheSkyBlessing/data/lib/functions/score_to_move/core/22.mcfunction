#> lib:score_to_move/core/22
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/23

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/21
execute if score $Move Lib matches ..-1 positioned ^ ^ ^419.4304 run function lib:score_to_move/core/21
