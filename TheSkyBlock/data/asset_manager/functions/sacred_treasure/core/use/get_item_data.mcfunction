#> asset_manager:sacred_treasure/core/use/get_item_data
#
# TargetSlotを元にプレイヤーの神器データを取得する
#
# @input
#   as player
#   storage asset:sacred_treasure TargetSlot : Slot
# @output storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasure/core/use/*

# autoの場合のエラーメッセージ
    execute unless data storage asset:sacred_treasure Items.auto run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"autoはこのトリガーでは実行できません","color":"white"}]
    execute unless data storage asset:sacred_treasure Items.auto run data modify storage asset:sacred_treasure TargetSlot set value 'mainhand'
# 取得
    execute if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure Items.mainhand
    execute if data storage asset:sacred_treasure {TargetSlot:"offhand"} run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure Items.offhand
    execute if data storage asset:sacred_treasure {TargetSlot:"feet"} run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure Items.feet
    execute if data storage asset:sacred_treasure {TargetSlot:"legs"} run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure Items.legs
    execute if data storage asset:sacred_treasure {TargetSlot:"chest"} run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure Items.chest
    execute if data storage asset:sacred_treasure {TargetSlot:"head"} run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure Items.head
    execute if data storage asset:sacred_treasure {TargetSlot:"auto"} run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure Items.auto