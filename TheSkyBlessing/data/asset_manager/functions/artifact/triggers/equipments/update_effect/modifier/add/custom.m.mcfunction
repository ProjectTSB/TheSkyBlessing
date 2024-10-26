#> asset_manager:artifact/triggers/equipments/update_effect/modifier/add/custom.m
# @input args
#   Type : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/

$function api:modifier/$(Type)/add
$execute store success score $CustomModifier Temporary run schedule function api:modifier/$(Type)/add 2147483647t
$schedule clear api:modifier/$(Type)/add
