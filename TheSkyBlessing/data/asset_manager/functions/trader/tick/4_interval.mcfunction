#> asset_manager:trader/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 奈落回避
    execute as @e[type=villager,tag=Npc,tag=Trader] at @s if predicate lib:is_void unless predicate lib:is_vehicle run function asset_manager:trader/to_spawn
