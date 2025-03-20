#> asset_manager:container/register/construct/set_items/item_normalize/from_preset
#
#
#
# @within function asset_manager:container/register/construct/set_items/item_normalize/

# 初期化
    item replace block 10000 0 10000 container.0 with air
# プリセット読み込み
    execute if data storage asset:container Item{PresetItem:"currency/"} run loot replace block 10000 0 10000 container.0 loot common:currency/
    execute if data storage asset:container Item{PresetItem:"currency/high"} run loot replace block 10000 0 10000 container.0 loot common:currency/high
    execute if data storage asset:container Item{PresetItem:"sacred_shard/lv-1"} run loot replace block 10000 0 10000 container.0 loot common:sacred_shard/lv-1
    execute if data storage asset:container Item{PresetItem:"sacred_shard/lv-2"} run loot replace block 10000 0 10000 container.0 loot common:sacred_shard/lv-2
    execute if data storage asset:container Item{PresetItem:"sacred_shard/lv-3"} run loot replace block 10000 0 10000 container.0 loot common:sacred_shard/lv-3
    execute if data storage asset:container Item{PresetItem:"sacred_shard/lv-4"} run loot replace block 10000 0 10000 container.0 loot common:sacred_shard/lv-4
# 個数をコピーする(消えちゃうので)
    data modify storage asset:container Count set from storage asset:container Item.Count
    function asset_manager:container/register/construct/common/calculate_count_for_multiplayer
# 設定
    data modify storage asset:container Item set from block 10000 0 10000 Items[{Slot:0b}]
    data modify storage asset:container Item.Count set from storage asset:container Count
    data remove storage asset:container Item.Slot
# ところで存在しない場合もありますよね
    execute unless data storage asset:container Item.id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のプリセットは存在しません: "},{"storage":"asset:container","nbt":"Item.PresetItem","color":"red"}]
# リセット
    data remove storage asset:container Count
