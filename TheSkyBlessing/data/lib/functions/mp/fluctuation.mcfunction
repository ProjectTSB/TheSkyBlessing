#> lib:mp/fluctuation
#
# プレイヤーのMPを増減します。
#
# @input
#   as player
#   score $Fluctuation Argument
#   storage lib: Argument.DisableLog?: boolean
# @api

#> temp
# @private
    #declare score_holder $Fluctuation

# 増減
    scoreboard players operation @s MP += $Fluctuation Lib
    scoreboard players operation @s MP > $0 Const
    scoreboard players operation @s MP < @s MPMax
# 表示
    execute unless data storage lib: Argument{DisableLog:1b} at @s run function lib:status_log/show_mp
# リセット
    scoreboard players reset $Fluctuation Lib
    data remove storage lib: Argument.Fluctuation
    data remove storage lib: Argument.DisableLog