#> asset_manager:artifact/create/set_lore/6.consume_item
#
#
#
# @within function asset_manager:artifact/create/set_lore/

execute if data storage asset:artifact ConsumeItem.Extra run scoreboard players set @s Temporary 1
loot replace block 10000 0 10000 container.6 loot asset_manager:artifact/generate_lore/6.cost_item
scoreboard players reset @s Temporary
