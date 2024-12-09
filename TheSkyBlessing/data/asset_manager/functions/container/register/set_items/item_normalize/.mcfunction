#> asset_manager:container/register/set_items/item_normalize/
#
#
#
# @within function asset_manager:container/register/set_items/

# 神器
    execute unless data storage asset:container Item.PresetItem unless data storage asset:container Item.id run function asset_manager:container/register/set_items/item_normalize/from_artifact
# プリセットデータ
    execute if data storage asset:container Item.PresetItem run function asset_manager:container/register/set_items/item_normalize/from_preset
# 何もする必要がないよね
    # execute if data storage asset:container Item.id
