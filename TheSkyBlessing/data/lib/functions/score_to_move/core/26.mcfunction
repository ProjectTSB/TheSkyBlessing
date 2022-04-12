#> lib:score_to_move/core/26
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/27

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/25
execute if score $Move Lib matches ..-1 positioned ^ ^ ^6710.8864 run function lib:score_to_move/core/25
