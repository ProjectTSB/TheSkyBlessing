#> asset_manager:artifact/triggers/equipments/set_and_modifier/add/attempt_call.m
# @input args
#   Type : string
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/add/process

$function api:modifier/$(Type)/add
$execute store success storage asset:artifact Temp.Implement byte 1 run schedule function api:modifier/$(Type)/add 2147483647t
$schedule clear api:modifier/$(Type)/add
