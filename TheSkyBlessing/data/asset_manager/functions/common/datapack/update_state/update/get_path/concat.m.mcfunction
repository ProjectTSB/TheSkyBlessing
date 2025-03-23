#> asset_manager:common/datapack/update_state/update/get_path/concat.m
#
#
#
# @input args
#   Datapack : string
#   Suffix : string
# @within function asset_manager:common/datapack/update_state/update/get_path/

$data modify storage asset:datapack Elem.Path set value "file/$(Datapack)$(Path)"
