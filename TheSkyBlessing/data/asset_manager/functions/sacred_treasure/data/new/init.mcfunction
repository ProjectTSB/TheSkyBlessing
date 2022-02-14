#> asset_manager:sacred_treasure/data/new/init
#
# プレイヤーデータから新しいcontextを生成してNewに突っ込む
#
# @within asset_manager:sacred_treasure/triggers/

# 初期化
    data remove storage asset:context New
# Inventory
    function api:data_get/inventory
    data modify storage asset:context New.Inventory set from storage api: Inventory
# SelectedItemSlot
    function api:data_get/selected_item_slot
    data modify storage asset:context New.SelectedItemSlot set from storage api: SelectedItemSlot
# Items
    function api:data_get/selected_item
    data modify storage asset:context New.Items.mainhand set from storage api: SelectedItem
    data modify storage asset:context New.Items.offhand set from storage asset:context New.Inventory[{Slot:-106b}]
    data modify storage asset:context New.Items.feet set from storage asset:context New.Inventory[{Slot:100b}]
    data modify storage asset:context New.Items.legs set from storage asset:context New.Inventory[{Slot:101b}]
    data modify storage asset:context New.Items.chest set from storage asset:context New.Inventory[{Slot:102b}]
    data modify storage asset:context New.Items.head set from storage asset:context New.Inventory[{Slot:103b}]

    execute if data storage asset:context New.Inventory[{Slot:0b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:0b}]
    execute unless data storage asset:context New.Inventory[{Slot:0b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:0b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:1b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:1b}]
    execute unless data storage asset:context New.Inventory[{Slot:1b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:1b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:2b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:2b}]
    execute unless data storage asset:context New.Inventory[{Slot:2b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:2b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:3b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:3b}]
    execute unless data storage asset:context New.Inventory[{Slot:3b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:3b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:4b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:4b}]
    execute unless data storage asset:context New.Inventory[{Slot:4b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:4b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:5b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:5b}]
    execute unless data storage asset:context New.Inventory[{Slot:5b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:5b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:6b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:6b}]
    execute unless data storage asset:context New.Inventory[{Slot:6b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:6b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:7b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:7b}]
    execute unless data storage asset:context New.Inventory[{Slot:7b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:7b,tag:{TSB:{ID:-2}}}
    execute if data storage asset:context New.Inventory[{Slot:8b}] run data modify storage asset:context New.Items.hotbar append from storage asset:context New.Inventory[{Slot:8b}]
    execute unless data storage asset:context New.Inventory[{Slot:8b}] run data modify storage asset:context New.Items.hotbar append value {id:"none",Slot:8b,tag:{TSB:{ID:-2}}}
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
    data modify storage asset:context New.id.hotbar append from storage asset:context New.Items.hotbar[].tag.TSB.ID