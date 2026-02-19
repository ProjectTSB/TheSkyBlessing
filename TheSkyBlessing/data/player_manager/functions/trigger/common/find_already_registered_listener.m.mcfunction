#> player_manager:trigger/common/find_already_registered_listener.m
# @input args
#   Key: string
# @within function
#   player_manager:trigger/register/get_or_allocate_id.m
#   player_manager:trigger/disable/m

$return run data get storage player_manager:trigger TriggerListeners[{Key:"$(Key)"}].ID
