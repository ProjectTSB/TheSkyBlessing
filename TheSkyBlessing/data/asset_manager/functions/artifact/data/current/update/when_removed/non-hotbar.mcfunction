#> asset_manager:artifact/data/current/update/when_removed/non-hotbar
#
# Itemが削除されたときの更新処理
#
# @within function asset_manager:artifact/data/current/update/

execute if data storage asset:artifact {TargetSlot:"auto"} run data modify storage asset:context id.auto set value -2
execute if data storage asset:artifact {TargetSlot:"auto"} run data modify storage asset:context id.all.auto set value -2

execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run data modify storage asset:context Items.mainhand set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run data modify storage asset:context id.mainhand set value -2
execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run data modify storage asset:context id.all.mainhand set value -2
execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run function asset_manager:artifact/data/current/update/when_removed/hotbar

execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} run data modify storage asset:context Items.offhand set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} run data modify storage asset:context id.offhand set value -2
execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} run data modify storage asset:context id.all.offhand set value -2

execute if data storage asset:artifact {TargetDefaultSlot:"feet"} run data modify storage asset:context Items.feet set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {TargetDefaultSlot:"feet"} run data modify storage asset:context id.feet set value -2
execute if data storage asset:artifact {TargetDefaultSlot:"feet"} run data modify storage asset:context id.all.feet set value -2

execute if data storage asset:artifact {TargetDefaultSlot:"legs"} run data modify storage asset:context Items.legs set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {TargetDefaultSlot:"legs"} run data modify storage asset:context id.legs set value -2
execute if data storage asset:artifact {TargetDefaultSlot:"legs"} run data modify storage asset:context id.all.legs set value -2

execute if data storage asset:artifact {TargetDefaultSlot:"chest"} run data modify storage asset:context Items.chest set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {TargetDefaultSlot:"chest"} run data modify storage asset:context id.chest set value -2
execute if data storage asset:artifact {TargetDefaultSlot:"chest"} run data modify storage asset:context id.all.chest set value -2

execute if data storage asset:artifact {TargetDefaultSlot:"head"} run data modify storage asset:context Items.head set value {tag:{TSB:{ID:-2,UUID:-2,LocalCooldown:0}}}
execute if data storage asset:artifact {TargetDefaultSlot:"head"} run data modify storage asset:context id.head set value -2
execute if data storage asset:artifact {TargetDefaultSlot:"head"} run data modify storage asset:context id.all.head set value -2