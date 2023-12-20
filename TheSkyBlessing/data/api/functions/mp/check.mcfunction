#> api:mp/check
#
# プレイヤーのMPが一定以上かチェックします。
#
# また、この関数は開発特権がついている際に常時`true`を返します。
#
# @input
#   as player
#   storage api: Argument.Threshold : int
# @output storage api: Return.IsThresholdOrMore: boolean
# @api

#> temp
# @private
    #declare score_holder $CheckMP

# 閾値を取得
    execute store result score $CheckMP Temporary run data get storage api: Argument.Threshold
# Bypass
    execute if entity @s[tag=DevPrivilege] run scoreboard players set $CheckMP Temporary 0
# チェック
    execute store success storage api: Return.IsThresholdOrMore byte 1 if score $CheckMP Temporary <= @s MP
# リセット
    scoreboard players reset $CheckMP Temporary