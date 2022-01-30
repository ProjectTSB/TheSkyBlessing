#> lib:mp/check
#
# プレイヤーのMPが一定以上かチェックします。
#
# @input
#   as player
#   score $CheckMP Lib
# @output result score boolean
# @api

#> temp
# @private
    #declare score_holder $CheckMP

# リセット予約
    schedule function lib:mp/core/reset 1t
# Bypass
    execute if entity @s[tag=DevPrivilege] run scoreboard players set $CheckMP Lib 0
# チェック
    execute if score $CheckMP Lib <= @s MP