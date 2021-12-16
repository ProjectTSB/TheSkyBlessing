#> asset_manager:island/dispel/boss/tick
#
#
#
# @within function
#   asset_manager:island/dispel/boss/
#   asset_manager:island/dispel/boss/tick

execute as @e[type=marker,tag=BossSummonMarker] at @s run function asset_manager:island/dispel/boss/task

execute if entity @e[type=marker,tag=BossSummonMarker,limit=1] run schedule function asset_manager:island/dispel/boss/tick 1t