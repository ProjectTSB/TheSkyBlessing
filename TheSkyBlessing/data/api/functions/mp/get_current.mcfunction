#> api:mp/get_current
#
# プレイヤーのMPの現在値を取得します。
#
# @input as player
# @output storage api: Return.CurrentMP : int @ 0..
# @api

# 取得
    execute store result storage api: Return.CurrentMP int 0.1 run scoreboard players get @s MP
