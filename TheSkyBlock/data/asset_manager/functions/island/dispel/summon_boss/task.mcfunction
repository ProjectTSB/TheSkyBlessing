#> asset_manager:island/dispel/summon_boss/task
#
#
#
# @within function
#   asset_manager:island/dispel/summon_boss/
#   asset_manager:island/dispel/summon_boss/task

#TODO 召喚回りの演出とかを作る

execute if entity @e[type=marker,tag=BossSummonMarker] run schedule function asset_manager:island/dispel/summon_boss/task 1t