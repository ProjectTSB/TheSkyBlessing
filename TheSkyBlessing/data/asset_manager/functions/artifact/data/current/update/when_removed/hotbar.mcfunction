#> asset_manager:artifact/data/current/update/when_removed/hotbar
#
#
#
# @within function
#   asset_manager:artifact/data/current/update/
#   asset_manager:artifact/data/current/update/when_removed/non-hotbar

execute if data storage asset:artifact {SpecificTargetSlot:0b} run data modify storage asset:context Items.hotbar[0] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:0b} run data modify storage asset:context id.hotbar[0] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:0b} run data modify storage asset:context id.all.hotbar[0] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:1b} run data modify storage asset:context Items.hotbar[1] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:1b} run data modify storage asset:context id.hotbar[1] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:1b} run data modify storage asset:context id.all.hotbar[1] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:2b} run data modify storage asset:context Items.hotbar[2] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:2b} run data modify storage asset:context id.hotbar[2] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:2b} run data modify storage asset:context id.all.hotbar[2] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:3b} run data modify storage asset:context Items.hotbar[3] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:3b} run data modify storage asset:context id.hotbar[3] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:3b} run data modify storage asset:context id.all.hotbar[3] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:4b} run data modify storage asset:context Items.hotbar[4] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:4b} run data modify storage asset:context id.hotbar[4] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:4b} run data modify storage asset:context id.all.hotbar[4] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:5b} run data modify storage asset:context Items.hotbar[5] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:5b} run data modify storage asset:context id.hotbar[5] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:5b} run data modify storage asset:context id.all.hotbar[5] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:6b} run data modify storage asset:context Items.hotbar[6] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:6b} run data modify storage asset:context id.hotbar[6] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:6b} run data modify storage asset:context id.all.hotbar[6] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:7b} run data modify storage asset:context Items.hotbar[7] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:7b} run data modify storage asset:context id.hotbar[7] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:7b} run data modify storage asset:context id.all.hotbar[7] set value -2

execute if data storage asset:artifact {SpecificTargetSlot:8b} run data modify storage asset:context Items.hotbar[8] set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {SpecificTargetSlot:8b} run data modify storage asset:context id.hotbar[8] set value -2
execute if data storage asset:artifact {SpecificTargetSlot:8b} run data modify storage asset:context id.all.hotbar[8] set value -2

data remove storage asset:artifact SpecificTargetSlot