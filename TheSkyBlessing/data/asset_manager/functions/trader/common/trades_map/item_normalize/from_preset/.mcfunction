#> asset_manager:trader/common/trades_map/item_normalize/from_preset/
#
#
#
# @within function asset_manager:trader/common/trades_map/item_normalize/

# 初期化
    item replace block 10000 0 10000 container.0 with air
# プリセット読み込み
    function asset_manager:trader/common/trades_map/item_normalize/from_preset/attempt_load.m with storage asset:trader Item
# 個数をコピーする(消えちゃうので)
    data modify storage asset:trader Count set from storage asset:trader Item.Count
# 設定
    data modify storage asset:trader Item set from block 10000 0 10000 Items[{Slot:0b}]
    data modify storage asset:trader Item.Count set from storage asset:trader Count
    data remove storage asset:trader Item.Slot
# ところで存在しない場合もありますよね
    execute unless data storage asset:trader Item.id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のプリセットは存在しません: "},{"storage":"asset:trader","nbt":"Item.PresetItem","color":"red"}]
# リセット
    data remove storage asset:trader Count
