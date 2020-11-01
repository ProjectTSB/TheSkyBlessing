#> asset:sacred_treasure/lib/give
#
# 神器を入手します
#
# @input
#   **storage asset:define ID** : int
#   神器の固有ID スプレッドシートに記載した上で記述してください。
#   /
#   **storage asset:define Item** : string(ItemID)
#   元となるアイテム
#   /
#   **storage asset:define Name** : string(TextComponent)
#   神器の名前
#   /
#   **storage asset:define Lore** : string\[](TextComponent[])
#   神器の説明文 条件などもここに記載
#   /
#   **storage asset:define Trigger** : string(Enum)
#   神器のトリガー
#   `onClick`,`shot`,`itemUse`,`passive`,`onAttack`,`onDamage`,`sneak`
#   /
#   **storage asset:define RemainCount** : int (オプション)
#   使用できる回数
#   /
#   **storage asset:define CanUsedGod** : string\[](Enum[])
#   使える神のリスト
#   `Flora`,`Urban`,`Nyaptov`,`Wi-ki`,`Rumor`
#
# @within function asset:sacred_treasure/*/give

#> Private
# @private
    #declare tag abstrictItem

# storage検証
    execute unless data storage asset:define ID run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument ID at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:define Item run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Item at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:define Name run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Name at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:define Lore run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Lore at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:define Trigger run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Trigger at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:define CanUsedGod run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument CanUsedGod at asset:sacred_treasure/lib/give"}}}]
# 元となるアイテム召喚
    execute at @s run summon item ~ ~ ~ {Item:{id:"barrier",Count:1b},Tags:[abstrictItem],PickupDelay:1s}
# 各データ設定
    execute as @e[type=item,tag=abstrictItem,limit=1] run function asset_manager:sacred_treasures/core/set_data
# tag remove
    tag @e[type=item,tag=abstrictItem] remove abstrictItem
# リセット
    data remove storage asset:define ID
    data remove storage asset:define Item
    data remove storage asset:define Name
    data remove storage asset:define Lore
    data remove storage asset:define Trigger
    data remove storage asset:define RemainCount
    data remove storage asset:define CanUsedGod