#> asset_manager:artifact/triggers/equipments/set_and_modifier/remove/attempt_call.m
# @input args
#   Type : string
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/remove/process

$function api:modifier/$(Type)/remove
$execute store success storage asset:artifact Temp.Implement byte 1 run schedule function api:modifier/$(Type)/remove 2147483647t
$schedule clear api:modifier/$(Type)/remove
