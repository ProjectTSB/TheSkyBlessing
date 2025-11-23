#> debug:catalog_container/artifact/core/generate_catalog
#
# リストモードの場合、再帰でIDリストから神器NBTを生成します
# 総当りモードの場合、再帰で神器IDを全探索して神器NBTを生成します
#
# @within function
#   debug:catalog_container/artifact/core/generate_catalog
#   debug:catalog_container/artifact/init.m


# 取得する神器IDを設定
    execute if data storage debug:catalog_container Artifact{Mode:"IDList"} run data modify storage api: Argument.ID set from storage debug:catalog_container Artifact.IDList[-1]
    execute if data storage debug:catalog_container Artifact{Mode:"BruteForce"} store result storage api: Argument.ID int 1 run scoreboard players get $Counter Temporary
# IDから神器を取得
# 実行者を設定しないとバグるので注意(1敗)
    execute as 0-0-0-0-0 run function api:artifact/storage/from_id
# リストに追加
    execute if data storage api: Return.Artifact run data modify storage debug:catalog_container Artifact.CatalogItems append from storage api: Return.Artifact
# 消化
    execute if data storage debug:catalog_container Artifact{Mode:"IDList"} run data remove storage debug:catalog_container Artifact.IDList[-1]
    execute if data storage debug:catalog_container Artifact{Mode:"BruteForce"} run scoreboard players remove $Counter Temporary 1
# これ以上再帰する必要が無かったら再帰せずreturn
    execute if data storage debug:catalog_container Artifact{Mode:"IDList"} unless data storage debug:catalog_container Artifact.IDList[0] run return 1
    execute if data storage debug:catalog_container Artifact{Mode:"BruteForce"} if score $Counter Temporary <= $0 Const run return run scoreboard players reset $Counter Temporary
# 再帰
    function debug:catalog_container/artifact/core/generate_catalog
