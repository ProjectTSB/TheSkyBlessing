#> asset:sacred_treasure/lib/give
#
# 神器を入手します
#
# @input
#   **storage asset:sacred_treasure ID** : int
#   神器の固有ID スプレッドシートに記載した上で記述してください。
#   /
#   **storage asset:sacred_treasure Item** : string(ItemID)
#   元となるアイテム
#   /
#   **storage asset:sacred_treasure Name** : string(TextComponent)
#   神器の名前
#   /
#   **storage asset:sacred_treasure Lore** : string\[](TextComponent[])
#   神器の説明文 条件などもここに記載
#   /
#   **storage asset:sacred_treasure Trigger** : string(Enum)
#   神器のトリガー
#   `onClick`,`shot`,`itemUse`,`passive`,`onAttack`,`onDamage`,`sneak`
#   /
#   **storage asset:sacred_treasure RemainingCount** : int (オプション)
#   使用できる回数
#   /
#   **storage asset:sacred_treasure CanUsedGod** : string\[](Enum[])
#   使える神のリスト
#   `Flora`,`Urban`,`Nyaptov`,`Wi-ki`,`Rumor`
#
# @within function asset:sacred_treasure/*/_.give

#> Private
# @private
    #declare tag abstrictItem

# storage検証
    execute unless data storage asset:sacred_treasure ID run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument ID at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Item run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Item at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Name run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Name at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Lore run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Lore at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Trigger run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Trigger at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure CanUsedGod run tellraw @a [{"storage":"global:debug","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument CanUsedGod at asset:sacred_treasure/lib/give"}}}]
# 元となるアイテム召喚
    execute at @s run summon item ~ ~ ~ {Item:{id:"barrier",Count:1b},Tags:[abstrictItem],PickupDelay:1s}
# 各データ設定
    execute as @e[type=item,tag=abstrictItem,limit=1] run function asset_manager:sacred_treasures/core/set_data
# tag remove
    tag @e[type=item,tag=abstrictItem] remove abstrictItem
# リセット
    data remove storage asset:sacred_treasure ID
    data remove storage asset:sacred_treasure Item
    data remove storage asset:sacred_treasure Name
    data remove storage asset:sacred_treasure Lore
    data remove storage asset:sacred_treasure Trigger
    data remove storage asset:sacred_treasure RemainingCount
    data remove storage asset:sacred_treasure CanUsedGod