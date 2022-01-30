#> asset_manager:sacred_treasure/data/old/set_to_current
#
# Oldをcurrentデータにsetします
#
# @within function asset_manager:sacred_treasure/triggers/**

# リセット
    function asset_manager:sacred_treasure/data/current/reset
# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context id set from storage asset:context Old.id
    data modify storage asset:context Items set from storage asset:context Old.Items
    data modify storage asset:context Inventory set from storage asset:context Old.Inventory
    data modify storage asset:context SelectedItemSlot set from storage asset:context Old.SelectedItemSlot
# autoの処理
    # 初期化
        data modify storage asset:context id.auto set value -1
    # idのputとAutoSlotの設定
        data modify storage asset:context Items.AutoSlot set from storage asset:sacred_treasure Argument.AutoSlot
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"mainhand"} run data modify storage asset:context id.auto set from storage asset:context id.mainhand
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"offhand"} run data modify storage asset:context id.auto set from storage asset:context id.offhand
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"feet"} run data modify storage asset:context id.auto set from storage asset:context id.feet
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"legs"} run data modify storage asset:context id.auto set from storage asset:context id.legs
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"chest"} run data modify storage asset:context id.auto set from storage asset:context id.chest
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"head"} run data modify storage asset:context id.auto set from storage asset:context id.head
    # リセット
        data remove storage asset:sacred_treasure Argument.AutoSlot