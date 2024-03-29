#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier.m
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

data modify storage asset:artifact Modifiers set from storage asset:artifact Modifiers
data modify storage asset:artifact Modifiers[].ID set from storage asset:artifact CopiedItemData[-1].ID
data modify storage asset:artifact Modifiers[].Slot set from storage asset:artifact Slot
