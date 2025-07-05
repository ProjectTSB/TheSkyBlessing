#> asset_manager:common/datapack/update_state/update/save_state.m
# @input args
#   Datapack : string
# @input storage asset:datapack
#   Elem.Active: Boolean
# @within function asset_manager:common/datapack/update_state/update/

$data modify storage asset:datapack DatapackState."$(Datapack)" set from storage asset:datapack Elem.Active
