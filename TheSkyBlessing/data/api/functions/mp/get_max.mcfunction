#> api:mp/get_max
#
# プレイヤーのMPの最大値を取得します。
#
# @input as player
# @output storage api: Return.MaxMP : int @ 0..
# @api

# 取得
    execute store result storage api: Return.MaxMP int 1 run scoreboard players get @s MPMax