#> debug:artifact/core/update_all/foreach
#
#
#
# @within function debug:artifact/core/update_all/*

execute if data storage debug:artifact Inventory[-1].tag.TSB.ID run data modify storage api: Argument.ID set from storage debug:artifact Inventory[-1].tag.TSB.ID
execute if data storage debug:artifact Inventory[-1].tag.TSB.ID run function api:artifact/box/from_id
execute if data storage debug:artifact Inventory[-1].tag.TSB.ID run data modify storage api: Argument.Inventory append from block 10000 0 10000 Items[{Slot:0b}]
execute if data storage debug:artifact Inventory[-1].tag.TSB.ID run data modify storage api: Argument.Inventory[-1].Slot set from storage debug:artifact Inventory[-1].Slot

execute unless data storage debug:artifact Inventory[-1].tag.TSB.ID run data modify storage api: Argument.Inventory append from storage debug:artifact Inventory[-1]

data remove storage debug:artifact Inventory[-1]
execute if data storage debug:artifact Inventory[0] run function debug:artifact/core/update_all/foreach
