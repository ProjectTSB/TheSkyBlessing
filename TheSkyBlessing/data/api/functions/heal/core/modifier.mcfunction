#> api:heal/core/modifier
#
# 回復量に補正をかける
#
# @within function api:heal/modifier

#> Temp
# @private
    #declare score_holder $Heal
    #declare score_holder $Modifier

# ユーザーストレージ呼び出し
    function oh_my_dat:please
# 必要なデータ取得
    execute store result score $Heal Temporary run data get storage api: Argument.Heal 100
    execute store result score $Modifier Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Heal 100
# 補正
    scoreboard players operation $Heal Temporary *= $Modifier Temporary
# 代入
    execute store result storage api: Argument.Heal float 0.0001 run scoreboard players get $Heal Temporary
# リセット
    scoreboard players reset $Heal Temporary
    scoreboard players reset $Modifier Temporary