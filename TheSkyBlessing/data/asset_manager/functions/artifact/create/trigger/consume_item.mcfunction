#> asset_manager:artifact/create/trigger/consume_item
#
#
#
# @within function asset_manager:artifact/create/trigger/

execute if data storage asset:artifact ConsumeItem.Extra run scoreboard players set @s Temporary 1
loot replace block 10000 0 10000 container.6 loot asset_manager:artifact/generate_lore/cost_item
scoreboard players reset @s Temporary
