#> asset_manager:common/datapack/update_state/update/get_path/
#
# データパックの名前からパスを返す
#
# @input storage asset:datapack Elem.Datapack : string
# @output storage asset:datapack Elem.Path : string
# @within function asset_manager:common/datapack/update_state/update/foreach

execute if data storage global {IsProduction:1b} run data modify storage asset:datapack Elem.Suffix set value ".zip"
execute if data storage global {IsProduction:0b} run data modify storage asset:datapack Elem.Suffix set value ""
function asset_manager:common/datapack/update_state/update/get_path/concat.m with storage asset:datapack Elem
data remove storage asset:datapack Elem.Datapack
data remove storage asset:datapack Elem.Suffix
