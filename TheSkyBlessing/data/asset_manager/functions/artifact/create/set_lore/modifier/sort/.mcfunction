#> asset_manager:artifact/create/set_lore/modifier/sort/
#
#
#
# @within function
#   asset_manager:artifact/create/set_lore/modifier/
#   asset_manager:artifact/create/set_lore/modifier/sort/

# 最後尾の要素を暫定的に優先度最大としてコピー
    data modify storage asset:artifact MaxPriority set from storage asset:artifact PrioritizedModifiers[-1]
    data remove storage asset:artifact PrioritizedModifiers[-1]

# 最大値の要素を探す
    execute if data storage asset:artifact PrioritizedModifiers[0] run function asset_manager:artifact/create/set_lore/modifier/sort/search_max

# BufferをPrioritizedModifiersへ代入
    data modify storage asset:artifact PrioritizedModifiers set from storage asset:artifact Buffer
    data remove storage asset:artifact Buffer

# 最大値の要素を別storageへ代入
    data modify storage asset:artifact SortedModifiers append from storage asset:artifact MaxPriority
    data remove storage asset:artifact MaxPriority

# 要素がまだあれば再帰
    execute if data storage asset:artifact PrioritizedModifiers[0] run function asset_manager:artifact/create/set_lore/modifier/sort/
