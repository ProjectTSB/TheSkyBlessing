#> asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/concat.m
# @input args
#   First : string
#   Second : string
#   Third : string
#   Fourth : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/

$data modify storage asset:artifact Modifier.ThirdArgs set value "$(First)$(Second)$(Third)$(Fourth)"
