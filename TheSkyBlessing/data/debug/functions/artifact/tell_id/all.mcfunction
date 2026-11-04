#> debug:artifact/tell_id/all
#
# 装備している全ての神器のIDを表示します。
#
# @private
# @user


# 実行者が居ない場合エラー
    execute unless entity @s[type=player] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text": "実行者を指定してください。"}]

# 取得
    function api:data_get/selected_item
    function api:data_get/inventory

# 手持ち
    execute if data storage api: SelectedItem.tag.TSB.ID run tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"メインハンド: "},{"storage":"api:","nbt":"SelectedItem.tag.TSB.ID"}]
    execute if data storage api: Inventory[{Slot:-106b}].tag.TSB.ID run tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"オフハンド: "},{"storage":"api:","nbt":"Inventory[{Slot:-106b}].tag.TSB.ID"}]
# 装備
    execute unless data storage api: Inventory[{Slot:103b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:103b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:102b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:102b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:101b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:101b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:100b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:100b}].tag.TSB.ID set value "-"
    tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"頭胴脚足: "},{"storage":"api:","nbt":"Inventory[{Slot:103b}].tag.TSB.ID"},{"text":", "},{"storage":"api:","nbt":"Inventory[{Slot:102b}].tag.TSB.ID"},{"text":", "},{"storage":"api:","nbt":"Inventory[{Slot:101b}].tag.TSB.ID"},{"text":", "},{"storage":"api:","nbt":"Inventory[{Slot:100b}].tag.TSB.ID"}]
# ホットバー
    execute unless data storage api: Inventory[{Slot:0b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:0b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:1b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:1b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:2b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:2b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:3b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:3b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:4b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:4b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:5b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:5b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:6b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:6b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:7b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:7b}].tag.TSB.ID set value "-"
    execute unless data storage api: Inventory[{Slot:8b}].tag.TSB.ID run data modify storage api: Inventory[{Slot:8b}].tag.TSB.ID set value "-"
    tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"ホットバー: "},{"storage":"api:","nbt":"Inventory[{Slot:0b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:1b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:2b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:3b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:4b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:5b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:6b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:7b}].tag.TSB.ID"},{"text": ", "},{"storage":"api:","nbt":"Inventory[{Slot:8b}].tag.TSB.ID"}]
