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
data modify storage api: Argument.DisableLog set from storage lib: Argument.DisableLog
function api:mp/fluctuation
data remove storage lib: Argument.DisableLog
scoreboard players reset $Fluctuation Lib