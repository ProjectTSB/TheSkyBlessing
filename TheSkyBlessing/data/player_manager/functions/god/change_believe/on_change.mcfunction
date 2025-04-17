#> player_manager:god/change_believe/on_change
#
#
#
# @within function
#   player_manager:god/change_believe/on_change_believe_request
#   player_manager:god/change_believe/confirm

scoreboard players set @s GodMessagePhase 0
execute if entity @s[tag=!Believe.Flora,tag=!Believe.Nyaptov,tag=!Believe.Rumor,tag=!Believe.Urban,tag=!Believe.Wi-ki] run scoreboard players set @s GodMessagePhase 240
function player_manager:god/change_believe/change_task
