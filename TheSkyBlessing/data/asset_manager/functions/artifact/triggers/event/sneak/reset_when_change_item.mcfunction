#> asset_manager:artifact/triggers/event/sneak/reset_when_change_item
#
#
#
# @within function asset_manager:artifact/triggers/

execute if data storage asset:artifact EquipmentChanges[00]._{_:false} run scoreboard players set @s Sneak.Mainhand 1
execute if data storage asset:artifact EquipmentChanges[01]._{_:false} run scoreboard players set @s Sneak.Offhand 1
execute if data storage asset:artifact EquipmentChanges[02]._{_:false} run scoreboard players set @s Sneak.Head 1
execute if data storage asset:artifact EquipmentChanges[03]._{_:false} run scoreboard players set @s Sneak.Chest 1
execute if data storage asset:artifact EquipmentChanges[04]._{_:false} run scoreboard players set @s Sneak.Legs 1
execute if data storage asset:artifact EquipmentChanges[05]._{_:false} run scoreboard players set @s Sneak.Feet 1
execute if data storage asset:artifact EquipmentChanges[06]._{_:false} run scoreboard players set @s Sneak.Hotbar0 1
execute if data storage asset:artifact EquipmentChanges[07]._{_:false} run scoreboard players set @s Sneak.Hotbar1 1
execute if data storage asset:artifact EquipmentChanges[08]._{_:false} run scoreboard players set @s Sneak.Hotbar2 1
execute if data storage asset:artifact EquipmentChanges[09]._{_:false} run scoreboard players set @s Sneak.Hotbar3 1
execute if data storage asset:artifact EquipmentChanges[10]._{_:false} run scoreboard players set @s Sneak.Hotbar4 1
execute if data storage asset:artifact EquipmentChanges[11]._{_:false} run scoreboard players set @s Sneak.Hotbar5 1
execute if data storage asset:artifact EquipmentChanges[12]._{_:false} run scoreboard players set @s Sneak.Hotbar6 1
execute if data storage asset:artifact EquipmentChanges[13]._{_:false} run scoreboard players set @s Sneak.Hotbar7 1
execute if data storage asset:artifact EquipmentChanges[14]._{_:false} run scoreboard players set @s Sneak.Hotbar8 1
