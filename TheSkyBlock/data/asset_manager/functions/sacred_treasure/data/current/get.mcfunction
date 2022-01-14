#> asset_manager:sacred_treasure/data/current/get
#
# TargetSlotを元にプレイヤーのデータを取得する
#
# @input
#   as player
#   storage asset:sacred_treasure TargetSlot : Slot
# @output storage asset:sacred_treasure Item : ItemData
# @within function
#   asset_manager:sacred_treasure/check/
#   asset_manager:sacred_treasure/use/

# autoの場合の処理
    execute if data storage asset:sacred_treasure {TargetSlot:"auto"} unless data storage asset:context Items.AutoSlot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"autoはこのトリガーでは実行できません","color":"white"}]
    execute if data storage asset:sacred_treasure {TargetSlot:"auto"} unless data storage asset:context Items.AutoSlot run data modify storage asset:sacred_treasure TargetSlot set value 'mainhand'
    execute if data storage asset:sacred_treasure {TargetSlot:"auto"} run data modify storage asset:sacred_treasure TargetSlot set from storage asset:context Items.AutoSlot
# 取得
    execute if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run data modify storage asset:sacred_treasure Item set from storage asset:context Items.mainhand
    execute if data storage asset:sacred_treasure {TargetSlot:"offhand"} run data modify storage asset:sacred_treasure Item set from storage asset:context Items.offhand
    execute if data storage asset:sacred_treasure {TargetSlot:"feet"} run data modify storage asset:sacred_treasure Item set from storage asset:context Items.feet
    execute if data storage asset:sacred_treasure {TargetSlot:"legs"} run data modify storage asset:sacred_treasure Item set from storage asset:context Items.legs
    execute if data storage asset:sacred_treasure {TargetSlot:"chest"} run data modify storage asset:sacred_treasure Item set from storage asset:context Items.chest
    execute if data storage asset:sacred_treasure {TargetSlot:"head"} run data modify storage asset:sacred_treasure Item set from storage asset:context Items.head