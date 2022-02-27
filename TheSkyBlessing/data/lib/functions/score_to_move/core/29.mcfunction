#> lib:score_to_move/core/29
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/30

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/28
execute if score $Move Lib matches ..-1 positioned ^ ^ ^53687.0912 run function lib:score_to_move/core/28
