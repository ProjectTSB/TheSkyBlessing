#> api:heal/core/receive_modifier
#
# 被回復量に補正をかける
#
# @within function api:heal/core/player

#> Temp
# @private
    #declare score_holder $Heal
    #declare score_holder $Modifier

# ユーザーストレージ呼び出し
    function oh_my_dat:please
# 必要なデータ取得
    execute store result score $Heal Temporary run data get storage api: Argument.Fluctuation 100
    execute store result score $Modifier Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.ReceiveHeal 100
# 補正
    scoreboard players operation $Heal Temporary *= $Modifier Temporary
# 代入
    execute store result storage api: Argument.Fluctuation float 0.0001 run scoreboard players get $Heal Temporary
# リセット
    scoreboard players reset $Heal Temporary
    scoreboard players reset $Modifier Temporary
