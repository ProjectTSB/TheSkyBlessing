#> asset_manager:trader/register/trades_map/item_normalize/from_sacred_treasure
#
#
#
# @within function asset_manager:trader/register/trades_map/item_normalize/

# 初期化
    item replace block 10000 0 10000 container.0 with air
# 神器読み込み
    data modify storage api: Argument.ID set from storage asset:trader Item
    function api:sacred_treasure/box/from_id
# 設定
    data modify storage asset:trader Item set from block 10000 0 10000 Items[{Slot:0b}]
    data remove storage asset:trader Item.Slot
# ところで存在しない場合もありますよね
    execute unless data storage asset:trader Item.id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDの神器は存在しません: "},{"storage":"asset:trader","nbt":"Item.PresetItem","color":"red"}]