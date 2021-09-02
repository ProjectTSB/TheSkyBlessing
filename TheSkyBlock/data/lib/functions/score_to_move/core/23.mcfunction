#> lib:score_to_move/core/23
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/24

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/22
execute if score $Move Lib matches ..-1 positioned ^ ^ ^838.8608 run function lib:score_to_move/core/22
