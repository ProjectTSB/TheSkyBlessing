#> asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/custom.m
# @input args
#   Type : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/

$function api:modifier/$(Type)/remove
$execute store success score $CustomModifier Temporary run schedule function api:modifier/$(Type)/remove 2147483647t
$schedule clear api:modifier/$(Type)/remove
