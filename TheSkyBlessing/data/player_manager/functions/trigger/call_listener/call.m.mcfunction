#> player_manager:trigger/call_listener/call.m
# @input args
#   ID: int
# @within function player_manager:trigger/call_listener/

$function lib:macro/call.m with storage player_manager:trigger TriggerListeners[{ID:$(ID)}]
