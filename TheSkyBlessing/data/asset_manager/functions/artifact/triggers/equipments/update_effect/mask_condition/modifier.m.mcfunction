#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier.m
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

data modify storage asset:artifact CopiedModifiers[].ID set from storage asset:artifact CopiedItemData[-1].ID
data modify storage asset:artifact CopiedModifiers[].Slot set from storage asset:artifact Slot
data modify storage asset:artifact Modifiers append from storage asset:artifact CopiedModifiers[]
