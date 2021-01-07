#> lib:mp/set
#
# プレイヤーのMPをその値に設定します。
#
# @input
#   as player
#   score $Set Argument
# @api

#> temp
# @private
    #declare score_holder $Set

# セット
    scoreboard players operation @s MP = $Set Lib
# リセット
    scoreboard players reset $Set Lib