#> asset_manager:artifact/triggers/use_item/check_has_consumable
#
#
#
# @within function asset_manager:artifact/triggers/use_item/

# 下ごしらえ
    data modify storage asset:artifact Temp set value [{},{}]
    data modify storage asset:artifact Temp[0] set from storage asset:context Old.Items.mainhand
    data modify storage asset:artifact Temp[1] set from storage asset:context Old.Items.offhand
    data modify entity @s HandItems set from storage asset:artifact Temp

# チェック
    execute unless predicate asset_manager:has_consumable_item/mainhand unless predicate asset_manager:has_consumable_item/offhand run data modify storage asset:artifact Argument.AutoSlot set value 'none'
    execute if predicate asset_manager:has_consumable_item/mainhand unless predicate asset_manager:has_consumable_item/offhand run data modify storage asset:artifact Argument.AutoSlot set value 'mainhand'
    execute unless predicate asset_manager:has_consumable_item/mainhand if predicate asset_manager:has_consumable_item/offhand run data modify storage asset:artifact Argument.AutoSlot set value 'offhand'

# リセット
    kill @s
    data remove storage asset:artifact Temp