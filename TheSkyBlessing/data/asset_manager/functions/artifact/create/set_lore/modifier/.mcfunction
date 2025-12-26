#> asset_manager:artifact/create/set_lore/modifier/
#
# 装備時効果の内容をLoreに追加
#
# @within function asset_manager:artifact/create/set_lore/

# 補正が2個以上ならソートする
    execute if data storage asset:artifact Equipment.Modifiers[1] run function asset_manager:artifact/create/set_lore/modifier/sort

# 補正が2個以上でないならソートされたものとする
    execute unless data storage asset:artifact Equipment.Modifiers[1] run data modify storage asset:artifact SortedModifiers set from storage asset:artifact Equipment.Modifiers

# 書き出し
    function asset_manager:artifact/create/set_lore/modifier/write

# リセット
    data remove storage asset:artifact CopiedModifiers
    data remove storage asset:artifact PrioritizedModifiers
    data remove storage asset:artifact SortedModifiers
