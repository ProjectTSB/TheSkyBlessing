#> asset_manager:sacred_treasure/core/data_put/common
#
# asset:contextにデータをputする共通処理
#
# @within function asset_manager:sacred_treasure/core/data_put/from_*

# データ移植
    data modify storage asset:context Items.mainhand set from storage asset:sacred_treasure Argument.SelectedItem
    data modify storage asset:context Items.offhand set from storage asset:sacred_treasure Argument.Inventory[{Slot:-106b}]
    data modify storage asset:context Items.feet set from storage asset:sacred_treasure Argument.Inventory[{Slot:100b}]
    data modify storage asset:context Items.legs set from storage asset:sacred_treasure Argument.Inventory[{Slot:101b}]
    data modify storage asset:context Items.chest set from storage asset:sacred_treasure Argument.Inventory[{Slot:102b}]
    data modify storage asset:context Items.head set from storage asset:sacred_treasure Argument.Inventory[{Slot:103b}]
# IDのリセット
    data modify storage asset:context id.mainhand set value -1
    data modify storage asset:context id.offhand set value -1
    data modify storage asset:context id.feet set value -1
    data modify storage asset:context id.legs set value -1
    data modify storage asset:context id.chest set value -1
    data modify storage asset:context id.head set value -1
    data modify storage asset:context id.auto set value -1
# ID追加
    data modify storage asset:context id.mainhand set from storage asset:context Items.mainhand.tag.TSB.ID
    data modify storage asset:context id.offhand set from storage asset:context Items.offhand.tag.TSB.ID
    data modify storage asset:context id.feet set from storage asset:context Items.feet.tag.TSB.ID
    data modify storage asset:context id.legs set from storage asset:context Items.legs.tag.TSB.ID
    data modify storage asset:context id.chest set from storage asset:context Items.chest.tag.TSB.ID
    data modify storage asset:context id.head set from storage asset:context Items.head.tag.TSB.ID
# Items.autoにデータ入れる // この関数が実行される時点ではItems.autoはnullであることが保証されている
    data modify storage asset:context Items.AutoSlot set from storage asset:sacred_treasure Argument.AutoSlot
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"mainhand"} run data modify storage asset:context id.auto set from storage asset:context Items.mainhand.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"offhand"} run data modify storage asset:context id.auto set from storage asset:context Items.offhand.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"feet"} run data modify storage asset:context id.auto set from storage asset:context Items.feet.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"legs"} run data modify storage asset:context id.auto set from storage asset:context Items.legs.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"chest"} run data modify storage asset:context id.auto set from storage asset:context Items.chest.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"head"} run data modify storage asset:context id.auto set from storage asset:context Items.head.tag.TSB.ID
# リセット
    data remove storage asset:sacred_treasure Argument