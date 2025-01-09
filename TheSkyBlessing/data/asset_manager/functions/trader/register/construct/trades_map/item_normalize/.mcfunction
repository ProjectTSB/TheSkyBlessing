#> asset_manager:trader/register/construct/trades_map/item_normalize/
#
#
#
# @within function asset_manager:trader/register/construct/trades_map/

# 神器
    execute unless data storage asset:trader Item.PresetItem unless data storage asset:trader Item.id run function asset_manager:trader/register/construct/trades_map/item_normalize/from_artifact
# プリセットデータ
    execute if data storage asset:trader Item.PresetItem run function asset_manager:trader/register/construct/trades_map/item_normalize/from_preset
# 何もする必要がないよね
    # execute if data storage asset:trader Item.id
