#> asset_manager:sacred_treasure/data/current/update/when_removed
#
# Itemが削除されたときの更新処理
#
# @within function asset_manager:sacred_treasure/data/current/update/

execute if data storage asset:sacred_treasure {TargetSlot:"auto"} run data remove storage asset:context id.auto
execute if data storage asset:sacred_treasure {TargetSlot:"auto"} run data remove storage asset:context id.all.auto

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage asset:context Items.mainhand set value {}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data remove storage asset:context id.mainhand
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data remove storage asset:context id.all.mainhand

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data modify storage asset:context Items.offhand set value {}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data remove storage asset:context id.offhand
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data remove storage asset:context id.all.offhand

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data modify storage asset:context Items.feet set value {}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data remove storage asset:context id.feet
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data remove storage asset:context id.all.feet

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data modify storage asset:context Items.legs set value {}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data remove storage asset:context id.legs
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data remove storage asset:context id.all.legs

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data modify storage asset:context Items.chest set value {}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data remove storage asset:context id.chest
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data remove storage asset:context id.all.chest

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context Items.head set value {}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data remove storage asset:context id.head
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data remove storage asset:context id.all.head