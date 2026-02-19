#> player_manager:trigger/
# @within function core:tick/player/

execute if score @s Trigger matches 1.. run function player_manager:trigger/call_listener/

scoreboard players reset @s Trigger
scoreboard players enable @s Trigger
