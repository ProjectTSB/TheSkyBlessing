#> asset_manager:artifact/use/item/update_local_cooldown/hotbar
#
#
#
# @within function
#   asset_manager:artifact/use/item/update_local_cooldown/
#   asset_manager:artifact/use/item/update_local_cooldown/non-hotbar

# 設定
    execute if data storage asset:artifact {SpecificTargetSlot:0b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[05].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[05].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:1b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[06].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[06].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:2b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[07].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[07].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:3b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[08].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[08].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:4b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[09].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[09].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:5b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[10].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[10].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:6b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[11].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[11].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:7b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[12].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[12].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    execute if data storage asset:artifact {SpecificTargetSlot:8b} store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[13].Value int 1 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[13].Max int 1 run data get storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
# リセット
    data remove storage asset:artifact SpecificTargetSlot