#> debug:catalog_container/artifact/core/fill_init
#
# 中身を初期化し、未収蔵のカタログアイテムで埋めます
#
# @within function debug:catalog_container/artifact/fill

# 中身削除
    data modify block ~ ~ ~ Items set value []

# アイテムが入るブロックじゃなかったらやめる
    execute unless function lib:has_empty_slot/block run return fail

# リストの場合未収録アイテムが無いならやめる
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactIDList"} unless data storage debug:catalog_container Artifact.IDList[0] run return fail

# 総当りの場合スコアを準備
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} store result score $Counter Temporary run data get storage debug:catalog_container Artifact.IDCounter

# 再帰で挿入
    function debug:catalog_container/artifact/core/fill_recursive

# 総当たりの再帰の後片付け
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} store result storage debug:catalog_container Artifact.IDCounter int 1 run scoreboard players get $Counter Temporary
    scoreboard players reset $Counter Temporary
