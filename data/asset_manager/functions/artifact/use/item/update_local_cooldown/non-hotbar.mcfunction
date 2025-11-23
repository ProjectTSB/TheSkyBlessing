#> asset_manager:artifact/use/item/update_local_cooldown/non-hotbar
#
#
#
# @within function asset_manager:artifact/use/item/update_local_cooldown/

execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} store result storage asset:artifact SpecificTargetSlot byte 1 run data get storage asset:context SelectedItemSlot
execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run function asset_manager:artifact/use/item/update_local_cooldown/hotbar
execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[0].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[0].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
execute if data storage asset:artifact {TargetDefaultSlot:"feet"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[1].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[1].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
execute if data storage asset:artifact {TargetDefaultSlot:"legs"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[2].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[2].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
execute if data storage asset:artifact {TargetDefaultSlot:"chest"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[3].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[3].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
execute if data storage asset:artifact {TargetDefaultSlot:"head"} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[4].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[4].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown