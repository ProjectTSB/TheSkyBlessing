#> asset_manager:sacred_treasure/data/current/get
#
# TargetSlotを元にプレイヤーのデータを取得する
#
# @input
#   as player
#   storage asset:sacred_treasure TargetSlot : Slot
# @output storage asset:sacred_treasure
#   Item : [ItemData]
#   TargetDefaultSlot : Slot
# @within function
#   asset_manager:sacred_treasure/check/
#   asset_manager:sacred_treasure/use/

# autoで無い場合はそのままDefaultSlotに突っ込む
    execute unless data storage asset:sacred_treasure {TargetSlot:"auto"} run data modify storage asset:sacred_treasure TargetDefaultSlot set from storage asset:sacred_treasure TargetSlot
# autoの場合の処理
    execute if data storage asset:sacred_treasure {TargetSlot:"auto"} run data modify storage asset:sacred_treasure TargetDefaultSlot set from storage asset:context Items.AutoSlot
    execute if data storage asset:sacred_treasure {TargetSlot:"auto"} unless data storage asset:context Items.AutoSlot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"autoはこのトリガーでは実行できません","color":"white"}]
    execute if data storage asset:sacred_treasure {TargetSlot:"auto"} unless data storage asset:context Items.AutoSlot run data modify storage asset:sacred_treasure TargetDefaultSlot set value 'mainhand'

# 取得
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage asset:sacred_treasure TargetItems append from storage asset:context Items.mainhand
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data modify storage asset:sacred_treasure TargetItems append from storage asset:context Items.offhand
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data modify storage asset:sacred_treasure TargetItems append from storage asset:context Items.feet
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data modify storage asset:sacred_treasure TargetItems append from storage asset:context Items.legs
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data modify storage asset:sacred_treasure TargetItems append from storage asset:context Items.chest
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:sacred_treasure TargetItems append from storage asset:context Items.head

    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run data modify storage asset:sacred_treasure HotbarItems set from storage asset:context Items.hotbar
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function asset_manager:sacred_treasure/data/current/filter
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run data remove storage asset:sacred_treasure HotbarItems