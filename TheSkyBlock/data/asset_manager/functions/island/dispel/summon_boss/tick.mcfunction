#> asset_manager:island/dispel/summon_boss/tick
#
#
#
# @within function
#   asset_manager:island/dispel/summon_boss/
#   asset_manager:island/dispel/summon_boss/tick

#TODO 召喚回りの演出とかを作る

execute as @e[type=marker,tag=BossSummonMarker] at @s run function asset_manager:island/dispel/summon_boss/task

execute if entity @e[type=marker,tag=BossSummonMarker,limit=1] run schedule function asset_manager:island/dispel/summon_boss/tick 1t