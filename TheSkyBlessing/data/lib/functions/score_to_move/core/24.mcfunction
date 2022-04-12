#> lib:score_to_move/core/24
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/25

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/23
execute if score $Move Lib matches ..-1 positioned ^ ^ ^1677.7216 run function lib:score_to_move/core/23
