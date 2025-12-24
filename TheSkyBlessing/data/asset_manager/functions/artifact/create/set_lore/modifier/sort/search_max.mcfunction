#> asset_manager:artifact/create/set_lore/modifier/sort/search_max
#
#
#
# @within function
#   asset_manager:artifact/create/set_lore/modifier/sort/
#   asset_manager:artifact/create/set_lore/modifier/sort/search_max

#> Private
# @private
    #declare score_holder $Max
    #declare score_holder $Current

# 暫定的な最大値のPriorityを取得
    execute store result score $Max Temporary run data get storage asset:artifact MaxPriority.Priority

# 比較する要素のPriorityを取得
    execute store result score $Current Temporary run data get storage asset:artifact PrioritizedModifiers[-1].Priority

# 比較し、優先度が低い方を別storageへ
    execute if score $Max Temporary < $Current Temporary run data modify storage asset:artifact Buffer append from storage asset:artifact MaxPriority
    execute unless score $Max Temporary < $Current Temporary run data modify storage asset:artifact Buffer append from storage asset:artifact PrioritizedModifiers[-1]

# 比較し、Currentの方が大きければ代入する
    execute if score $Max Temporary < $Current Temporary run data modify storage asset:artifact MaxPriority set from storage asset:artifact PrioritizedModifiers[-1]

# リセット
    scoreboard players reset $Max Temporary
    scoreboard players reset $Current Temporary

# 最後尾の要素を削除
    data remove storage asset:artifact PrioritizedModifiers[-1]

# 要素がまだあれば再帰
    execute if data storage asset:artifact PrioritizedModifiers[0] run function asset_manager:artifact/create/set_lore/modifier/sort/search_max
