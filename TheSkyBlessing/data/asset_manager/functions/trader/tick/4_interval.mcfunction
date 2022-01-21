#> asset_manager:trader/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理
    execute if data storage global {IsProduction:1b} if score $LoadTime Global matches 160.. run function #asset:trader/register

# 奈落回避
    execute if data storage global {IsProduction:1b} as @e[type=villager,tag=Npc,tag=Trader] at @s if predicate asset_manager:is_void run function asset_manager:trader/to_spawn