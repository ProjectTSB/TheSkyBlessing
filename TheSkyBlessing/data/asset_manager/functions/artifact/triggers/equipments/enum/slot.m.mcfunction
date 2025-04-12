#> asset_manager:artifact/triggers/equipments/enum/slot.m
#
#
#
# @input args Slot : string
# @output storage asset:artifact Enum.Index
# @api

data remove storage asset:artifact Enum.Return
execute unless data storage asset:artifact Enum.Slot run data modify storage asset:artifact Enum.Slot set value {mainhand:1,offhand:2,feet:3,legs:4,chest:5,head:6,hotbar:7}
$data modify storage asset:artifact Enum.Return set from storage asset:artifact Enum.Slot.$(Slot)
