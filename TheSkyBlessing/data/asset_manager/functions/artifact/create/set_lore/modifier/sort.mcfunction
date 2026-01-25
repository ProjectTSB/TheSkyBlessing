#> asset_manager:artifact/create/set_lore/modifier/sort
#
#
#
# @within function asset_manager:artifact/create/set_lore/modifier/

# 各補正にPriorityを設定
    data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Equipment.Modifiers
    function asset_manager:artifact/create/set_lore/modifier/priority/set

# ソート
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact PrioritizedModifiers
    function lib:array/sort/compound/descend
    data modify storage asset:artifact SortedModifiers set from storage lib: Array
    function lib:array/session/close

