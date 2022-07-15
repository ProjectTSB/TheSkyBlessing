#> asset_manager:spawner/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# VFX
    execute at @e[type=snowball,tag=Spawner,tag=!BreakSpawner] run function asset_manager:spawner/tick/particle
