#> world_manager:nexus_loader/tick
#
#
#
# @within function core:tick/

#> Private
# @within function
#   world_manager:nexus_loader/tick
#   world_manager:nexus_loader/load/
#declare tag NexusLoader.Loaded

execute unless entity @a[tag=!NexusLoader.Loaded] run tag @a remove NexusLoader.Loaded
execute as @a[tag=!NexusLoader.Loaded,limit=4] run function world_manager:nexus_loader/load/
