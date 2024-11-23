#> asset_manager:artifact/use/item/update_local_cooldown/non-hotbar
#
#
#
# @within function asset_manager:artifact/use/item/update_local_cooldown/

execute if data storage asset:artifact TargetItem{TargetSlot:"mainhand"} run function asset_manager:artifact/use/item/update_local_cooldown/hotbar
execute if data storage asset:artifact TargetItem{TargetSlot:"offhand"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[0].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[0].Max int 1 run data get storage asset:artifact TargetItem.LocalCooldown
execute if data storage asset:artifact TargetItem{TargetSlot:"feet"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[1].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[1].Max int 1 run data get storage asset:artifact TargetItem.LocalCooldown
execute if data storage asset:artifact TargetItem{TargetSlot:"legs"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[2].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[2].Max int 1 run data get storage asset:artifact TargetItem.LocalCooldown
execute if data storage asset:artifact TargetItem{TargetSlot:"chest"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[3].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[3].Max int 1 run data get storage asset:artifact TargetItem.LocalCooldown
execute if data storage asset:artifact TargetItem{TargetSlot:"head"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[4].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[4].Max int 1 run data get storage asset:artifact TargetItem.LocalCooldown
