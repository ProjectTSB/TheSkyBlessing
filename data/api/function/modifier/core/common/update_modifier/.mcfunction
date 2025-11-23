#> api:modifier/core/common/update_modifier/
#
#
#
# @within function api:modifier/core/**

# Modifiersに補正の配列が入ってるのでベース値を元として計算する、その後Modifierに戻す
# 処理としては最初にModifiersをforEachしてOperation毎に別の配列にする、そのあと順番に処理する

# Operation毎に分離する
    function api:modifier/core/common/update_modifier/separate_modifiers
# ベース値の設定
    execute store result score $Modifier Temporary run data get storage api: Base 1000
# Addの処理
    scoreboard players operation $Modifier Temporary += $Add Temporary
# MultiplyBaseの処理
    scoreboard players add $MultiplyBase Temporary 1000
    scoreboard players operation $Modifier Temporary *= $MultiplyBase Temporary
    scoreboard players operation $Modifier Temporary /= $1000 Const
# Multiplyの処理
    execute if data storage api: Multiples[0] run function api:modifier/core/common/update_modifier/multiples
# ストレージに戻す
    execute store result storage api: Modifier double 0.001 run scoreboard players get $Modifier Temporary
# リセット
    scoreboard players reset $Add Temporary
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $MultiplyBase Temporary
    scoreboard players reset $Temp Temporary
