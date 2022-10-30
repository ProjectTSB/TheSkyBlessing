#> lib:mp/get
#
# プレイヤーのMPの現在値を取得します。
#
# @deprecated change to `api:mp/get_current`
# @input as player
# @output result score MP
# @api

# 取得
    function api:mp/get_current
    data get storage api: Return.CurrentMP