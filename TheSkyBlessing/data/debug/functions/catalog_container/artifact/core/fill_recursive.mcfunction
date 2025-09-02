#> debug:catalog_container/artifact/core/fill_recursive
#
# リストモードの場合、再帰でリストからアイテムを挿入します
# 総当りモードの場合、再帰で神器IDを全探索してアイテムを挿入します
#
# @within function debug:catalog_container/artifact/core/fill_*


# 取得する神器IDを設定
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactIDList"} run data modify storage api: Argument.ID set from storage debug:catalog_container Artifact.IDList[-1]
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} store result storage api: Argument.ID int 1 run scoreboard players get $Counter Temporary
# IDから神器を取得
# 実行者を設定しないとバグるので注意(1敗)
    execute as 0-0-0-0-0 run function api:artifact/box/from_id
# 挿入
    loot insert ~ ~ ~ mine 10000 0 10000 debug_stick
# 消化
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactIDList"} run data remove storage debug:catalog_container Artifact.IDList[-1]
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} run scoreboard players add $Counter Temporary 1
# 満杯かこれ以上再帰する必要が無かったら再帰せずreturn
    execute unless function lib:has_empty_slot/block run return 1
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactIDList"} unless data storage debug:catalog_container Artifact.IDList[0] run return 1
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} if score $Counter Temporary > $5000 Const run return 1
# 再帰
    function debug:catalog_container/artifact/core/fill_recursive
