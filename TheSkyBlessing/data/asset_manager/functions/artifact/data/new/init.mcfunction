#> asset_manager:artifact/data/new/init
#
# プレイヤーデータから新しいcontextを生成してNewに突っ込む
#
# @within asset_manager:artifact/triggers/

# 初期化
    data remove storage asset:artifact New
# Inventory
    function api:data_get/inventory
    data modify storage asset:artifact New.Inventory set from storage api: Inventory
# SelectedItemSlot
    function api:data_get/selected_item_slot
    data modify storage asset:artifact New.SelectedItemSlot set from storage api: SelectedItemSlot
# Items
    function api:data_get/selected_item
    data modify storage asset:artifact New.Items.mainhand set from storage api: SelectedItem
    data modify storage asset:artifact New.Items.offhand set from storage asset:artifact New.Inventory[{Slot:-106b}]
    data modify storage asset:artifact New.Items.feet set from storage asset:artifact New.Inventory[{Slot:100b}]
    data modify storage asset:artifact New.Items.legs set from storage asset:artifact New.Inventory[{Slot:101b}]
    data modify storage asset:artifact New.Items.chest set from storage asset:artifact New.Inventory[{Slot:102b}]
    data modify storage asset:artifact New.Items.head set from storage asset:artifact New.Inventory[{Slot:103b}]

    execute if data storage asset:artifact New.Inventory[{Slot:0b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:0b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:0b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:0b}
    execute if data storage asset:artifact New.Inventory[{Slot:1b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:1b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:1b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:1b}
    execute if data storage asset:artifact New.Inventory[{Slot:2b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:2b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:2b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:2b}
    execute if data storage asset:artifact New.Inventory[{Slot:3b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:3b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:3b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:3b}
    execute if data storage asset:artifact New.Inventory[{Slot:4b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:4b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:4b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:4b}
    execute if data storage asset:artifact New.Inventory[{Slot:5b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:5b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:5b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:5b}
    execute if data storage asset:artifact New.Inventory[{Slot:6b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:6b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:6b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:6b}
    execute if data storage asset:artifact New.Inventory[{Slot:7b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:7b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:7b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:7b}
    execute if data storage asset:artifact New.Inventory[{Slot:8b}] run data modify storage asset:artifact New.Items.hotbar append from storage asset:artifact New.Inventory[{Slot:8b}]
    execute unless data storage asset:artifact New.Inventory[{Slot:8b}] run data modify storage asset:artifact New.Items.hotbar append value {id:"none",Slot:8b}
# NullCheck
    execute unless data storage asset:artifact New.Items.mainhand run data modify storage asset:artifact New.Items.mainhand set value {}
    execute unless data storage asset:artifact New.Items.offhand run data modify storage asset:artifact New.Items.offhand set value {}
    execute unless data storage asset:artifact New.Items.feet run data modify storage asset:artifact New.Items.feet set value {}
    execute unless data storage asset:artifact New.Items.legs run data modify storage asset:artifact New.Items.legs set value {}
    execute unless data storage asset:artifact New.Items.chest run data modify storage asset:artifact New.Items.chest set value {}
    execute unless data storage asset:artifact New.Items.head run data modify storage asset:artifact New.Items.head set value {}
# 非TSBアイテムのNullCheck
    execute unless data storage asset:artifact New.Items.mainhand.tag.TSB.ID run data modify storage asset:artifact New.Items.mainhand.tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.offhand.tag.TSB.ID run data modify storage asset:artifact New.Items.offhand.tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.feet.tag.TSB.ID run data modify storage asset:artifact New.Items.feet.tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.legs.tag.TSB.ID run data modify storage asset:artifact New.Items.legs.tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.chest.tag.TSB.ID run data modify storage asset:artifact New.Items.chest.tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.head.tag.TSB.ID run data modify storage asset:artifact New.Items.head.tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[0].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[0].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[1].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[1].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[2].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[2].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[3].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[3].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[4].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[4].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[5].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[5].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[6].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[6].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[7].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[7].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.Items.hotbar[8].tag.TSB.ID run data modify storage asset:artifact New.Items.hotbar[8].tag.TSB set value {ID:-2,UUID:-2,LocalCooldown:0}
