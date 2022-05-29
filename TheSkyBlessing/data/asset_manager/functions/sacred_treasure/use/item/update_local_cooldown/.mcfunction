#> asset_manager:sacred_treasure/use/item/update_local_cooldown/
#
#
#
# @within function asset_manager:sacred_treasure/use/item/update

function oh_my_dat:please
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run data modify storage asset:sacred_treasure SpecificTargetSlot set from storage asset:sacred_treasure TargetItems[-1].Slot
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function asset_manager:sacred_treasure/use/item/update_local_cooldown/hotbar
execute unless data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function asset_manager:sacred_treasure/use/item/update_local_cooldown/non-hotbar