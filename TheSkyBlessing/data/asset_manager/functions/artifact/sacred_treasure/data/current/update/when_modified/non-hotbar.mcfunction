#> asset_manager:artifact/data/current/update/when_modified/non-hotbar
#
# Itemが存在するときの更新処理
#
# @within function asset_manager:artifact/data/current/update/

execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run data modify storage asset:context Items.mainhand set from storage asset:artifact ProcessedItem
execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run function asset_manager:artifact/data/current/update/when_modified/hotbar
execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} run data modify storage asset:context Items.offhand set from storage asset:artifact ProcessedItem
execute if data storage asset:artifact {TargetDefaultSlot:"feet"} run data modify storage asset:context Items.feet set from storage asset:artifact ProcessedItem
execute if data storage asset:artifact {TargetDefaultSlot:"legs"} run data modify storage asset:context Items.legs set from storage asset:artifact ProcessedItem
execute if data storage asset:artifact {TargetDefaultSlot:"chest"} run data modify storage asset:context Items.chest set from storage asset:artifact ProcessedItem
execute if data storage asset:artifact {TargetDefaultSlot:"head"} run data modify storage asset:context Items.head set from storage asset:artifact ProcessedItem