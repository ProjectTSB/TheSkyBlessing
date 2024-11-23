#> asset_manager:artifact/use/item/fetch_inventory.m
#
# アイテムを更新します
#
# @input args InvSlot : int
# @within function asset_manager:artifact/use/item/update

data modify block 10000 0 10000 Items set value []
$execute unless data storage asset:artifact TargetItem{Trigger:"use_item"} run data modify storage asset:artifact Items append from storage asset:artifact New.Inventory[{Slot:$(InvSlot)b}]
$execute if data storage asset:artifact TargetItem{Trigger:"use_item"} run data modify storage asset:artifact Items append from storage asset:artifact Old.Inventory[{Slot:$(InvSlot)b}]
data remove storage asset:artifact Items[].Slot
data modify block 10000 0 10000 Items append from storage asset:artifact Items[0]
data remove storage asset:artifact Items
