#> asset_manager:artifact/triggers/equipments/update_effect/modifier/get_slot_id
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/*/

execute if data storage asset:artifact Modifier{Slot:"mainhand"} run data modify storage asset:artifact Modifier.SlotID set value 1
execute if data storage asset:artifact Modifier{Slot:"offhand"} run data modify storage asset:artifact Modifier.SlotID set value 2
execute if data storage asset:artifact Modifier{Slot:"feet"} run data modify storage asset:artifact Modifier.SlotID set value 3
execute if data storage asset:artifact Modifier{Slot:"legs"} run data modify storage asset:artifact Modifier.SlotID set value 4
execute if data storage asset:artifact Modifier{Slot:"chest"} run data modify storage asset:artifact Modifier.SlotID set value 5
execute if data storage asset:artifact Modifier{Slot:"head"} run data modify storage asset:artifact Modifier.SlotID set value 6
execute if data storage asset:artifact Modifier{Slot:"hotbar"} run data modify storage asset:artifact Modifier.SlotID set value 7

data modify storage asset:artifact Modifier.UUID[3] set from storage asset:artifact Modifier.SlotID
