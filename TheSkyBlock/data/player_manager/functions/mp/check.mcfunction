#> player_manager:mp/check
#
# プレイヤーのMPが一定以上かチェックします。
#
# @input
#   as player
#   score $CheckMP Argument
# @output result score boolean
# @api

#> temp
# @private
    #declare score_holder $CheckMP

# リセット予約
    schedule function player_manager:mp/check.reset 1t
# チェック
    execute if score $CheckMP Lib <= @s MP