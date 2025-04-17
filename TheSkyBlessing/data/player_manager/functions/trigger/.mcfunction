#> player_manager:trigger/
# @within function core:tick/player/

execute unless score @s Trigger matches 0 run function player_manager:trigger/call_listener/

scoreboard players reset @s Trigger
scoreboard players enable @s Trigger
