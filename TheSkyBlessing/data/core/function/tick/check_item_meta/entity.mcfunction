#> core:tick/check_item_meta/entity
#
# ItemEntityのItemMetaDataをチェックします
#
# @within function core:tick/

# 負荷軽減のためstorageに代入する
    data modify storage core:temp TSB set from entity @s Item.components."minecraft:custom_data".TSB
    data modify storage core:temp MetaData set from storage core:temp TSB.ItemMetaData
# 各MetaData処理
    execute if data storage core:temp {MetaData:["ArtifactSeed"]} run function core:tick/check_item_meta/morph_artifact_seed
    execute if data storage core:temp {MetaData:["BanEntityConditionItem"]} run kill @s
# 二度と処理しないように
    tag @s add ItemMetaChecked
# リセット
    data remove storage core:temp TSB
    data remove storage core:temp MetaData
