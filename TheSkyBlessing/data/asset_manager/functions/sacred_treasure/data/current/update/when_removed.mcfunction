#> asset_manager:sacred_treasure/data/current/update/when_removed
#
# Itemが削除されたときの更新処理
#
# @within function asset_manager:sacred_treasure/data/current/update/

execute if data storage asset:sacred_treasure {TargetSlot:"auto"} run data modify storage asset:context id.auto set value -2
execute if data storage asset:sacred_treasure {TargetSlot:"auto"} run data modify storage asset:context id.all.auto set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage asset:context Items.mainhand set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage asset:context id.mainhand set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage asset:context id.all.mainhand set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data modify storage asset:context Items.offhand set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data modify storage asset:context id.offhand set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data modify storage asset:context id.all.offhand set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data modify storage asset:context Items.feet set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data modify storage asset:context id.feet set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data modify storage asset:context id.all.feet set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data modify storage asset:context Items.legs set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data modify storage asset:context id.legs set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data modify storage asset:context id.all.legs set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data modify storage asset:context Items.chest set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data modify storage asset:context id.chest set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data modify storage asset:context id.all.chest set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context Items.head set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context id.head set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context id.all.head set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context Items.head set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context id.head set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context id.all.head set value -2


execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run data modify storage asset:sacred_treasure TargetHotbarSlot set from storage asset:sacred_treasure Item[-1].Slot

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:0b} run data modify storage asset:context Items.hotbar[0] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:0b} run data modify storage asset:context id.hotbar[0] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:0b} run data modify storage asset:context id.all.hotbar[0] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:1b} run data modify storage asset:context Items.hotbar[1] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:1b} run data modify storage asset:context id.hotbar[1] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:1b} run data modify storage asset:context id.all.hotbar[1] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:2b} run data modify storage asset:context Items.hotbar[2] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:2b} run data modify storage asset:context id.hotbar[2] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:2b} run data modify storage asset:context id.all.hotbar[2] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:3b} run data modify storage asset:context Items.hotbar[3] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:3b} run data modify storage asset:context id.hotbar[3] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:3b} run data modify storage asset:context id.all.hotbar[3] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:4b} run data modify storage asset:context Items.hotbar[4] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:4b} run data modify storage asset:context id.hotbar[4] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:4b} run data modify storage asset:context id.all.hotbar[4] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:5b} run data modify storage asset:context Items.hotbar[5] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:5b} run data modify storage asset:context id.hotbar[5] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:5b} run data modify storage asset:context id.all.hotbar[5] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:6b} run data modify storage asset:context Items.hotbar[6] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:6b} run data modify storage asset:context id.hotbar[6] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:6b} run data modify storage asset:context id.all.hotbar[6] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:7b} run data modify storage asset:context Items.hotbar[7] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:7b} run data modify storage asset:context id.hotbar[7] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:7b} run data modify storage asset:context id.all.hotbar[7] set value -2

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:8b} run data modify storage asset:context Items.hotbar[8] set value {tag:{TSB:{ID:-2,UUID:-2}}}
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:8b} run data modify storage asset:context id.hotbar[8] set value -2
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure {TargetHotbarSlot:8b} run data modify storage asset:context id.all.hotbar[8] set value -2

data remove storage asset:sacred_treasure TargetHotbarSlot