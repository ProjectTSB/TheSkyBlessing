#> asset_manager:sacred_treasure/data/current/update/when_modified/non-hotbar
#
# Itemが存在するときの更新処理
#
# @within function asset_manager:sacred_treasure/data/current/update/

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage asset:context Items.mainhand set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run function asset_manager:sacred_treasure/data/current/update/when_modified/hotbar
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data modify storage asset:context Items.offhand set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data modify storage asset:context Items.feet set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data modify storage asset:context Items.legs set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data modify storage asset:context Items.chest set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context Items.head set from storage asset:sacred_treasure ProcessedItem