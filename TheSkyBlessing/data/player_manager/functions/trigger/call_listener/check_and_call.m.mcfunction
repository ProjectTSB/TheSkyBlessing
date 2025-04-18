#> player_manager:trigger/call_listener/check_and_call.m
# @input args
#   ID: int
# @within function player_manager:trigger/call_listener/

function oh_my_dat:please
$execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Trigger.$(ID) run return run tellraw @s [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"そのボタンは有効ではありません。","color":"white"}]

$data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Trigger.$(ID)

$function lib:macro/call.m with storage player_manager:trigger TriggerListeners[{ID:$(ID)}]
