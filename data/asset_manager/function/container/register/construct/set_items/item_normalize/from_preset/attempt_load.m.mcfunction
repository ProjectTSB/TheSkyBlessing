#> asset_manager:container/register/construct/set_items/item_normalize/from_preset/attempt_load.m
# @input args
#   PresetItem: string
# @within function asset_manager:container/register/construct/set_items/item_normalize/from_preset/

$loot replace block 10000 0 10000 container.0 loot common:$(PresetItem)
