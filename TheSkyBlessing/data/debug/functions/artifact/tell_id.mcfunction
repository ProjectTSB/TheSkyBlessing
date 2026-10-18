#> debug:artifact/tell_id
#
# 手に持っている神器のIDを表示します。
# 「コレ何番？」
#
# @private
# @user


# 実行者が居ない場合エラー
    execute unless entity @s[type=player] run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text": "実行者を指定してください。"}]

# 取得
    function api:data_get/selected_item
    function api:data_get/inventory

# 表示
# 手持ちアイテムがメインハンドの神器だけな場合は末尾の「(メインハンド)」を省略
    execute if data storage api: SelectedItem.tag.TSB.ID unless data storage api: Inventory[{Slot:-106b}] run tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"神器ID: "},{"storage":"api:","nbt":"SelectedItem.tag.TSB.ID"}]
    execute if data storage api: SelectedItem.tag.TSB.ID if data storage api: Inventory[{Slot:-106b}] run tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"神器ID: "},{"storage":"api:","nbt":"SelectedItem.tag.TSB.ID"},{"text":" (メインハンド)"}]
    execute if data storage api: Inventory[{Slot:-106b}].tag.TSB.ID run tellraw @s [{"storage":"global","nbt":"Prefix.DEBUG"},{"text":"神器ID: "},{"storage":"api:","nbt":"Inventory[{Slot:-106b}].tag.TSB.ID"},{"text":" (オフハンド)"}]

# 神器を持っていない場合
    execute unless data storage api: SelectedItem.tag.TSB.ID unless data storage api: Inventory[{Slot:-106b}].tag.TSB.ID run tellraw @s [{"storage":"global","nbt":"Prefix.FAILED"},{"text": "神器を手に持っていません。"}]
