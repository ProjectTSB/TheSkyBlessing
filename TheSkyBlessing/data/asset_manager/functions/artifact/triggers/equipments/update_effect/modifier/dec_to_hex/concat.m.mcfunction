#> asset_manager:artifact/triggers/equipments/update_effect/modifier/dec_to_hex/concat.m
# @input args
#   First : string
#   Second : string
#   Third : string
#   Fourth : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/dec_to_hex/

$data modify storage asset:artifact Modifier.ArtifactID set value "$(First)$(Second)$(Third)$(Fourth)"
