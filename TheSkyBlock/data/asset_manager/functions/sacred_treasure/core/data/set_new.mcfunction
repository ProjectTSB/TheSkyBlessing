#> asset_manager:sacred_treasure/core/data/set_new
#
# 神器のIDを取得します
#
# @within asset_manager:sacred_treasure/triggers/

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
# NullCheck
    execute unless data storage asset:context New.Items.mainhand run data modify storage asset:context New.Items.mainhand set value {}
    execute unless data storage asset:context New.Items.offhand run data modify storage asset:context New.Items.offhand set value {}
    execute unless data storage asset:context New.Items.feet run data modify storage asset:context New.Items.feet set value {}
    execute unless data storage asset:context New.Items.legs run data modify storage asset:context New.Items.legs set value {}
    execute unless data storage asset:context New.Items.chest run data modify storage asset:context New.Items.chest set value {}
    execute unless data storage asset:context New.Items.head run data modify storage asset:context New.Items.head set value {}
# id
    data modify storage asset:context New.id.mainhand set from storage asset:context New.Items.mainhand.tag.TSB.ID
    data modify storage asset:context New.id.offhand set from storage asset:context New.Items.offhand.tag.TSB.ID
    data modify storage asset:context New.id.feet set from storage asset:context New.Items.feet.tag.TSB.ID
    data modify storage asset:context New.id.legs set from storage asset:context New.Items.legs.tag.TSB.ID
    data modify storage asset:context New.id.chest set from storage asset:context New.Items.chest.tag.TSB.ID
    data modify storage asset:context New.id.head set from storage asset:context New.Items.head.tag.TSB.ID