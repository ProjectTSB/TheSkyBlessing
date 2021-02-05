#> asset_manager:sacred_treasure/core/data/from_player
#
# 神器のIDを取得します
#
# @within asset_manager:sacred_treasure/triggers/

# 初期化して古いデータとして突っ込む
    data remove storage asset:context Old
    data modify storage asset:context Old.id set from storage asset:context New.id
    data modify storage asset:context Old.Items set from storage asset:context New.Items
    data modify storage asset:context Old.Inventory set from storage asset:context New.Inventory
# 初期化
    data remove storage asset:context New
# Inventory
    data modify storage asset:context New.Inventory set from entity @s Inventory
# Items
    data modify storage asset:context New.Items.mainhand set from entity @s SelectedItem
    data modify storage asset:context New.Items.offhand set from storage asset:context New.Inventory[{Slot:-106b}]
    data modify storage asset:context New.Items.feet set from storage asset:context New.Inventory[{Slot:100b}]
    data modify storage asset:context New.Items.legs set from storage asset:context New.Inventory[{Slot:101b}]
    data modify storage asset:context New.Items.chest set from storage asset:context New.Inventory[{Slot:102b}]
    data modify storage asset:context New.Items.head set from storage asset:context New.Inventory[{Slot:103b}]
# id
    data modify storage asset:context New.id.mainhand set from storage asset:context New.Items.mainhand.tag.TSB.ID
    data modify storage asset:context New.id.offhand set from storage asset:context New.Items.offhand.tag.TSB.ID
    data modify storage asset:context New.id.feet set from storage asset:context New.Items.feet.tag.TSB.ID
    data modify storage asset:context New.id.legs set from storage asset:context New.Items.legs.tag.TSB.ID
    data modify storage asset:context New.id.chest set from storage asset:context New.Items.chest.tag.TSB.ID
    data modify storage asset:context New.id.head set from storage asset:context New.Items.head.tag.TSB.ID
# リセット
    data remove storage asset:context Inventory
    data remove storage asset:context Items
    data remove storage asset:context id