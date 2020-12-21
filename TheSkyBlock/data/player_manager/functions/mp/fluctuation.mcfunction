#> player_manager:mp/fluctuation
#
# プレイヤーのMPを増減します。
#
# @input
#   as player
#   score $Fluctuation Argument
#
# @api

#> temp
# @private
    #declare score_holder $Fluctuation

# 増減
    scoreboard players operation @s MP += $Fluctuation Argument
    scoreboard players operation @s MP > $0 Const
    scoreboard players operation @s MP < @s MPMax
# リセット
    scoreboard players reset $Fluctuation Argument