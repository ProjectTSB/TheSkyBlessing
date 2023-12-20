#> lib:mp/set
#
# プレイヤーのMPをその値に設定します。
#
# @deprecated change to `api:mp/set`
# @input
#   as player
#   score $Set Argument
# @api

#> temp
# @private
    #declare score_holder $Set

execute store result storage api: Argument.MP int 1 run scoreboard players get $Set Lib
function api:mp/set
scoreboard players reset $Set Lib