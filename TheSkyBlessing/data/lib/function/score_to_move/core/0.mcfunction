#> lib:score_to_move/core/0
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/1

scoreboard players operation $Move Lib += $Move Lib
execute if score $Move Lib matches 0.. run tp @s ~ ~ ~
execute if score $Move Lib matches ..-1 positioned ^ ^ ^0.0001 run tp @s ~ ~ ~