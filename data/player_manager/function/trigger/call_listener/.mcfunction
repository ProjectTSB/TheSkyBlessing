#> player_manager:trigger/call_listener/
# @within function player_manager:trigger/

execute store result storage player_manager:trigger Args.ID int 1 run scoreboard players get @s Trigger
function player_manager:trigger/call_listener/check_and_call.m with storage player_manager:trigger Args

data remove storage player_manager:trigger Args
