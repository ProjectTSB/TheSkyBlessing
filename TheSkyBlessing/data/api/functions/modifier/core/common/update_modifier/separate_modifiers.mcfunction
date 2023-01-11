#> api:modifier/core/common/update_modifier/separate_modifiers
#
#
#
# @within function
#   api:modifier/core/common/update_modifier/
#   api:modifier/core/common/update_modifier/separate_modifiers

#> Temp
# @private
    #declare score_holder $Temp

# おのれもやんで直接参照(Modifiers[-1]{Operation:"~"})が出来ないので移す
    data modify storage api: Op set from storage api: Modifiers[-1].Operation
# Operationを見て別に配列に移す
    execute if data storage api: {Op:"add"} store result score $Temp Temporary run data get storage api: Modifiers[-1].Amount 1000
    execute if data storage api: {Op:"add"} run scoreboard players operation $Add Temporary += $Temp Temporary
    execute if data storage api: {Op:"multiply_base"} store result score $Temp Temporary run data get storage api: Modifiers[-1].Amount 1000
    execute if data storage api: {Op:"multiply_base"} run scoreboard players operation $MultiplyBase Temporary += $Temp Temporary
    execute if data storage api: {Op:"multiply"} run data modify storage api: Multiples append from storage api: Modifiers[-1].Amount
# 最後の要素を削除
    data remove storage api: Modifiers[-1]
# リセット
    data remove storage api: Op
# 要素がまだあったら再帰する
    execute if data storage api: Modifiers[0] run function api:modifier/core/common/update_modifier/separate_modifiers