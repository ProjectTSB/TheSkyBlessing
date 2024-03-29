#> asset_manager:artifact/triggers/equipments/update_effect/get_index
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

# $FixedSlotIndexからTargetSlotを出力
    execute if score $SlotIndex Temporary matches 1 run data modify storage asset:artifact TargetSlot set value "mainhand"
    execute if score $SlotIndex Temporary matches 2 run data modify storage asset:artifact TargetSlot set value "offhand"
    execute if score $SlotIndex Temporary matches 3 run data modify storage asset:artifact TargetSlot set value "feet"
    execute if score $SlotIndex Temporary matches 4 run data modify storage asset:artifact TargetSlot set value "legs"
    execute if score $SlotIndex Temporary matches 5 run data modify storage asset:artifact TargetSlot set value "chest"
    execute if score $SlotIndex Temporary matches 6 run data modify storage asset:artifact TargetSlot set value "head"
    execute if score $SlotIndex Temporary matches 7.. run data modify storage asset:artifact TargetSlot set value "hotbar"
