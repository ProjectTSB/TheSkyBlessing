#> asset_manager:container/register/construct/
#
#
#
# @within function asset_manager:container/register/construct/m

# ブロック設置
    data modify storage asset:container Args.Block set from storage asset:container Block
    function asset_manager:container/register/construct/set_container_block.m with storage asset:container Args
# 中身の設定
    execute if data storage asset:container LootTable run function asset_manager:container/register/construct/set_loot_table/
    execute unless data storage asset:container LootTable run function asset_manager:container/register/construct/force_remove_loot_table/

    execute if data storage asset:container Items[0] run function asset_manager:container/register/construct/set_items/
    execute if data storage asset:container NormalizedItems[0] run data modify block ~ ~ ~ Items set from storage asset:container NormalizedItems
# リセット
    data remove storage asset:container Item
    data remove storage asset:container Items
    data remove storage asset:container NormalizedItems
    data remove storage asset:container Args
