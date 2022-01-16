#> lib:score_to_move/core/21
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/22

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run function lib:score_to_move/core/20
execute if score $Move Lib matches ..-1 positioned ^ ^ ^209.7152 run function lib:score_to_move/core/20
