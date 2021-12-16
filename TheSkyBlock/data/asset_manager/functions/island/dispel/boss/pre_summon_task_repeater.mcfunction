#> asset_manager:island/dispel/boss/pre_summon_task_repeater
#
#
#
# @within function
#   asset_manager:island/dispel/boss/
#   asset_manager:island/dispel/boss/pre_summon_task_repeater

execute as @e[type=marker,tag=BossSummonMarker] at @s run function asset_manager:island/dispel/boss/pre_summon_task

execute if entity @e[type=marker,tag=BossSummonMarker,limit=1] run schedule function asset_manager:island/dispel/boss/pre_summon_task_repeater 1t