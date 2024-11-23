#> asset_manager:artifact/triggers/equipments/update_attribute/add/custom.m
# @input args
#   Type : string
# @within function asset_manager:artifact/triggers/equipments/update_attribute/add/process

$function api:modifier/$(Type)/add
$execute store success score $CustomModifier Temporary run schedule function api:modifier/$(Type)/add 2147483647t
$schedule clear api:modifier/$(Type)/add
