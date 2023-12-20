#> api:mp/fluctuation
#
# プレイヤーのMPを増減します。
#
# @input
#   as player
#   storage api: Argument.Fluctuation : int
#   storage api: Argument.DisableLog? : boolean
# @api

#> temp
# @private
    #declare score_holder $Fluctuation

# 増減量取得
    execute store result score $Fluctuation Temporary run data get storage api: Argument.Fluctuation
# 増減
    scoreboard players operation @s MP += $Fluctuation Temporary
    scoreboard players operation @s MP > $0 Const
    scoreboard players operation @s MP < @s MPMax
# 表示
    execute unless data storage api: Argument{DisableLog:1b} at @s run function lib:status_log/show_mp
# リセット
    scoreboard players reset $Fluctuation Temporary
    data remove storage api: Argument.Fluctuation
    data remove storage api: Argument.DisableLog