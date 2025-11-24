#> debug:catalog_container/artifact/core/give
#
# 再帰でチェストに詰めて実行者にGive
#
# @within function debug:catalog_container/artifact/**give*



# 27個抽出
    function lib:array/packing_chest

# チェスト名準備
    execute store result storage debug:catalog_container Artifact.Give.Page int 1 run scoreboard players get $Page Temporary
    data modify storage debug:catalog_container Artifact.Give.From set from storage lib: Package[0].components."minecraft:custom_data".TSB.ID
    data modify storage debug:catalog_container Artifact.Give.To set from storage lib: Package[-1].components."minecraft:custom_data".TSB.ID

# チェストを作成
    loot replace block 10000 0 10000 container.0 loot debug:catalog_container/artifact_give
    data modify block 10000 0 10000 Items[0].tag.BlockEntityTag.Items set from storage lib: Package

# 実行者にgive
    loot give @s mine 10000 0 10000 debug_stick

# lib:array/packing_chestはPackageをリセットしないので自分でリセット
    data remove storage lib: Package

# 未収録のアイテムが残ってたら再帰
    scoreboard players add $Page Temporary 1
    execute if data storage lib: Array[0] run function debug:catalog_container/artifact/core/give
