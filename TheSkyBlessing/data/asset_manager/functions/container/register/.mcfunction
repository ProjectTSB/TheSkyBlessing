#> asset_manager:container/register/
#
#
#
# @within function asset:container/common/register

# ブロック設置
    data modify storage asset:container Args.Block set from storage asset:container Block
    function asset_manager:container/register/set_container_block.m with storage asset:container Args
# 中身の設定
    execute if data storage asset:container LootTable run data modify block ~ ~ ~ LootTable set from storage asset:container LootTable
    execute if data storage asset:container Items run function asset_manager:container/register/set_items/
    execute if data storage asset:container Items run data modify block ~ ~ ~ Items set from storage asset:container NormalizedItems
# リセット
    data remove storage asset:container Item
    data remove storage asset:container Items
    data remove storage asset:container NormalizedItems
    data remove storage asset:container Args
