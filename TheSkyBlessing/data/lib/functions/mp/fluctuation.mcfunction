#> lib:mp/fluctuation
#
# プレイヤーのMPを増減します。
#
# @deprecated change to `api:mp/fluctuation`
# @input
#   as player
#   score $Fluctuation Argument
#   storage lib: Argument.DisableLog?: boolean
# @api

#> temp
# @private
    #declare score_holder $Fluctuation

execute store result storage api: Argument.Fluctuation int 1 run scoreboard players get $Fluctuation Lib
function api:mp/fluctuation
scoreboard players reset $Fluctuation Lib