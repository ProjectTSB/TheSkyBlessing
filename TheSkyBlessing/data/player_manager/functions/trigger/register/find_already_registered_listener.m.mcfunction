#> player_manager:trigger/register/find_already_registered_listener.m
# @input args
#   key: string
# @within function player_manager:trigger/register/get_or_allocate_id.m

$return run data get storage player_manager:trigger TriggerListeners[{Key:"$(Key)"}].ID
