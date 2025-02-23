#> asset_manager:container/register/construct/set_loot_table/
#
#
#
# @within function asset_manager:container/register/construct/

# ルートテーブルのデータを決定する
    data modify block ~ ~ ~ LootTable set from storage asset:container LootTable
    item modify block ~ ~ ~ container.0 identity

# 取得
    data modify storage asset:container Items set from block ~ ~ ~ Items

# 一つもないなら return
    execute unless data storage asset:container Items[{tag:{TSB:{ArtifactSeed:{}}}}] run return run data remove storage asset:container Items

# ArtifactSeed なアイテムを取り出す
    data modify storage asset:container ArtifactSeeds set value []
    data modify storage asset:container ArtifactSeeds append from storage asset:container Items[{tag:{TSB:{ArtifactSeed:{}}}}]

# それぞれについて神器生成
    execute if data storage asset:container ArtifactSeeds[0] run function asset_manager:container/register/construct/set_loot_table/replace_artifact

# チェストに入れ直す
    data modify block ~ ~ ~ Items set from storage asset:container Items

# リセット
    data remove storage asset:container ArtifactSeeds
    data remove storage asset:container Items
