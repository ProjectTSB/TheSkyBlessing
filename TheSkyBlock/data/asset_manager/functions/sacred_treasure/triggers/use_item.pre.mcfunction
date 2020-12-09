#> asset_manager:sacred_treasure/triggers/use_item.pre
#
#
#
# @within function core:early_handler/consume_item

# Autoのスロット取得
    execute if predicate asset_manager:is_use_mainhand/consumable run data modify storage asset:sacred_treasure Items.Temp.AutoSlot set value "mainhand"
    execute unless predicate asset_manager:is_use_mainhand/consumable run data modify storage asset:sacred_treasure Items.Temp.AutoSlot set value "offhand"
# データput
    function asset_manager:sacred_treasure/core/data_put/to_user_storage