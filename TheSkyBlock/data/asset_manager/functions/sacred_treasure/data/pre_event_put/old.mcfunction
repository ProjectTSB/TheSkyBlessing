#> asset_manager:sacred_treasure/data/pre_event_put/old
#
# 古いデータをcontextにputします
#
# @within function asset_manager:sacred_treasure/triggers/**

# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context id set from storage asset:context Old.id
    data modify storage asset:context Items set from storage asset:context Old.Items
    data modify storage asset:context Inventory set from storage asset:context Old.Inventory
# autoの処理
    # 初期化
        data modify storage asset:context id.auto set value -1
    # idのputとAutoSlotの設定
        data modify storage asset:context Items.AutoSlot set from storage asset:sacred_treasure Argument.AutoSlot
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"mainhand"} run data modify storage asset:context id.auto set from storage asset:context Items.mainhand.tag.TSB.ID
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"offhand"} run data modify storage asset:context id.auto set from storage asset:context Items.offhand.tag.TSB.ID
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"feet"} run data modify storage asset:context id.auto set from storage asset:context Items.feet.tag.TSB.ID
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"legs"} run data modify storage asset:context id.auto set from storage asset:context Items.legs.tag.TSB.ID
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"chest"} run data modify storage asset:context id.auto set from storage asset:context Items.chest.tag.TSB.ID
        execute if data storage asset:sacred_treasure Argument{AutoSlot:"head"} run data modify storage asset:context id.auto set from storage asset:context Items.head.tag.TSB.ID
    # リセット
        data remove storage asset:sacred_treasure Argument.AutoSlot