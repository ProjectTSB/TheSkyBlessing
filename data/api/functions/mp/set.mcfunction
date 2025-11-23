#> api:mp/set
#
# プレイヤーのMPをその値に設定します。
#
# @input
#   as player
#   storage api: Argument.MP
# @api

#> temp
# @private
    #declare score_holder $MP

# 取得
    execute store result score $MP Temporary run data get storage api: Argument.MP 10
# セット
    scoreboard players operation @s MP = $MP Temporary
# リセット
    scoreboard players reset $MP Temporary
    data remove storage api: Argument.MP
