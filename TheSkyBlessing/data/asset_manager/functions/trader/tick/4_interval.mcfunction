#> asset_manager:trader/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理
    execute if data storage global {IsProduction:1b} run function #asset:trader/register

# 奈落回避
    execute as @e[type=villager,tag=Npc,tag=Trader] at @s if predicate lib:is_void unless predicate lib:is_vehicle run function asset_manager:trader/to_spawn