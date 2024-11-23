#> asset_manager:artifact/use/item/update_local_cooldown/
#
#
#
# @within function asset_manager:artifact/use/item/update

function oh_my_dat:please
execute if data storage asset:artifact TargetItem{TargetSlot:"hotbar"} run function asset_manager:artifact/use/item/update_local_cooldown/hotbar
execute unless data storage asset:artifact TargetItem{TargetSlot:"hotbar"} run function asset_manager:artifact/use/item/update_local_cooldown/non-hotbar
