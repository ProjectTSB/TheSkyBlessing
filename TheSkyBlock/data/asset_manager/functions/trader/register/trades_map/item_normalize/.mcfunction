#> asset_manager:trader/register/trades_map/item_normalize/
#
#
#
# @within function asset_manager:trader/register/trades_map/

tellraw @a [{"text":"Item: "},{"storage":"asset:trader","nbt":"Item"}]
# 神器
    execute unless data storage asset:trader Item.PresetItem unless data storage asset:trader Item.id run function asset_manager:trader/register/trades_map/item_normalize/from_sacred_treasure
# プリセットデータ
    execute if data storage asset:trader Item.PresetItem run function asset_manager:trader/register/trades_map/item_normalize/from_preset
# 何もする必要がないよね
    # execute if data storage asset:trader Item.id