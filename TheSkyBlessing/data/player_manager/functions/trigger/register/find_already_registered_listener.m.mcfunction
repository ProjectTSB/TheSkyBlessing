#> player_manager:trigger/register/find_already_registered_listener.m
# @input args
#   _: id(minecraft:function)
# @within function player_manager:trigger/register/m

$return run data get storage player_manager:trigger TriggerListeners[{_:"$(_)"}].ID
