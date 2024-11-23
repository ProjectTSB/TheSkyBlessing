#> asset_manager:artifact/triggers/event/use_item/reset_when_change_item
#
#
#
# @within function asset_manager:artifact/triggers/

execute if data storage asset:artifact EquipmentChanges[00]._{_:false} if data storage asset:artifact New.Consumable{TargetSlot:"mainhand"} run tag @s remove ConsumingItem
execute if data storage asset:artifact EquipmentChanges[00]._{_:false} if data storage asset:artifact New.Consumable{TargetSlot:"mainhand"} run data modify storage asset:artifact New.Consumable set value {}
execute if data storage asset:artifact EquipmentChanges[01]._{_:false} if data storage asset:artifact New.Consumable{TargetSlot: "offhand"} run tag @s remove ConsumingItem
execute if data storage asset:artifact EquipmentChanges[01]._{_:false} if data storage asset:artifact New.Consumable{TargetSlot: "offhand"} run data modify storage asset:artifact New.Consumable set value {}
