#> asset_manager:artifact/triggers/equipments/update_attribute/decimal_to_hexadecimal/concat.m
# @input args
#   First : string
#   Second : string
#   Third : string
#   Fourth : string
# @within function asset_manager:artifact/triggers/equipments/update_attribute/decimal_to_hexadecimal/

$data modify storage asset:artifact Temp.Modifier.ArtifactID set value "$(First)$(Second)$(Third)$(Fourth)"
