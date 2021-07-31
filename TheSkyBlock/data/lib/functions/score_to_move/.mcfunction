#> lib:score_to_move/
#
# 実行者を実行方向にスコア分だけ進めた位置にtpさせます
#
# @input
#   as entity
#   score $Move Lib
# @public

# 二分探索してTP
    function lib:score_to_move/core/30
# リセット
    scoreboard players reset $Move Lib