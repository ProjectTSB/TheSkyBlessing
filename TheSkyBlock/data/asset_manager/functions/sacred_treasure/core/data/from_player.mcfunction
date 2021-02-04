#> asset_manager:sacred_treasure/core/data/from_player
#
# 神器のIDを取得します
#
# @within asset_manager:sacred_treasure/triggers/

# データを移植
    data modify storage asset:sacred_treasure Temp set from entity @s Inventory
# リセット
    data remove storage asset:context id
    data remove storage asset:context Items
# データ移植
    data modify storage asset:context Items.mainhand set from entity @s SelectedItem
    data modify storage asset:context Items.offhand set from storage asset:sacred_treasure Temp[{Slot:-106b}]
    data modify storage asset:context Items.feet set from storage asset:sacred_treasure Temp[{Slot:100b}]
    data modify storage asset:context Items.legs set from storage asset:sacred_treasure Temp[{Slot:101b}]
    data modify storage asset:context Items.chest set from storage asset:sacred_treasure Temp[{Slot:102b}]
    data modify storage asset:context Items.head set from storage asset:sacred_treasure Temp[{Slot:103b}]
# ID追加
    data modify storage asset:context id.mainhand set from storage asset:context Items.mainhand.tag.TSB.ID
    data modify storage asset:context id.offhand set from storage asset:context Items.offhand.tag.TSB.ID
    data modify storage asset:context id.feet set from storage asset:context Items.feet.tag.TSB.ID
    data modify storage asset:context id.legs set from storage asset:context Items.legs.tag.TSB.ID
    data modify storage asset:context id.chest set from storage asset:context Items.chest.tag.TSB.ID
    data modify storage asset:context id.head set from storage asset:context Items.head.tag.TSB.ID
# リセット
    data remove storage asset:sacred_treasure Temp