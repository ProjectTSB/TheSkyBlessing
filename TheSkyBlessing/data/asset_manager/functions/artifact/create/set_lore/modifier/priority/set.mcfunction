#> asset_manager:artifact/create/set_lore/modifier/priority/set
#
#
#
# @within function
#   asset_manager:artifact/create/set_lore/modifier/
#   asset_manager:artifact/create/set_lore/modifier/priority/set

# 必要な変数を用意
    data modify storage asset:artifact Modifier set from storage asset:artifact CopiedModifiers[-1]

# 優先度をセット
    function asset_manager:artifact/create/set_lore/modifier/priority/set.m with storage asset:artifact Modifier

# 最後尾の要素を削除
    data remove storage asset:artifact CopiedModifiers[-1]

# 要素がまだあれば再帰
    execute if data storage asset:artifact CopiedModifiers[0] run function asset_manager:artifact/create/set_lore/modifier/priority/set
