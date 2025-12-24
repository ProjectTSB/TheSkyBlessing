#> asset_manager:artifact/create/set_lore/modifier/
#
# 装備時効果の内容をLoreに追加
#
# @within function asset_manager:artifact/create/set_lore/

# 各補正にPriorityを設定
    data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Equipment.Modifiers
    function asset_manager:artifact/create/set_lore/modifier/priority/set

    tellraw @a {"storage":"asset:artifact","nbt":"PrioritizedModifiers"}

# ソート
    # data modify storage asset:artifact CopiedModifiers set from storage asset:artifact PrioritizedModifiers
    function asset_manager:artifact/create/set_lore/modifier/sort/

# 書き出し
    # data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Equipment.Modifiers
    function asset_manager:artifact/create/set_lore/modifier/write

# リセット
    data remove storage asset:artifact CopiedModifiers
    data remove storage asset:artifact PrioritizedModifiers
    data remove storage asset:artifact SortedModifiers
