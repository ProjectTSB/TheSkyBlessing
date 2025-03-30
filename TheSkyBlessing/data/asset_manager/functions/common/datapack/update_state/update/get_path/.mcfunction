#> asset_manager:common/datapack/update_state/update/get_path/
#
# データパックの名前からパスを返す
#
# @input storage asset:datapack DatapackStateQueue[-1].Datapack : string
# @output storage asset:datapack DatapackStateQueue[-1].Path : string
# @within function asset_manager:common/datapack/update_state/update/

execute if data storage global {IsProduction:1b} run data modify storage asset:datapack DatapackStateQueue[-1].Suffix set value ".zip"
execute if data storage global {IsProduction:0b} run data modify storage asset:datapack DatapackStateQueue[-1].Suffix set value ""
function asset_manager:common/datapack/update_state/update/get_path/concat.m with storage asset:datapack DatapackStateQueue[-1]
data remove storage asset:datapack DatapackStateQueue[-1].Datapack
data remove storage asset:datapack DatapackStateQueue[-1].Suffix
