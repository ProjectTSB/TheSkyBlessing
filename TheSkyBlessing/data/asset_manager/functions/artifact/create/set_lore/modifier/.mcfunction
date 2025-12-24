#> asset_manager:artifact/create/set_lore/modifier/
#
# 装備時効果の内容をLoreに追加
#
# @within function asset_manager:artifact/create/set_lore/

# 各補正にPriorityを設定
    data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Equipment.Modifiers
    function asset_manager:artifact/create/set_lore/modifier/priority/set

# ソート
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact PrioritizedModifiers
    function lib:array/sort/compound/descend
    data modify storage asset:artifact SortedModifiers set from storage lib: Array
    function lib:array/session/close

# 書き出し
    function asset_manager:artifact/create/set_lore/modifier/write

# リセット
    data remove storage asset:artifact CopiedModifiers
    data remove storage asset:artifact PrioritizedModifiers
    data remove storage asset:artifact SortedModifiers
