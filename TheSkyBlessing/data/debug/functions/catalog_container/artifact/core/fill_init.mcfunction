#> debug:catalog_container/artifact/core/fill_init
#
# 中身を初期化し、未収蔵のカタログアイテムで埋めます
#
# @within function debug:catalog_container/artifact/fill

# 中身削除
    data modify block ~ ~ ~ Items set value []

# アイテムが入るブロックじゃなかったらやめる
    execute unless function lib:has_empty_slot/block run return fail

# 総当たりの場合
# スコアを準備
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} store result score $Counter Temporary run data get storage debug:catalog_container Artifact.IDCounter
# 再帰で挿入
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} run function debug:catalog_container/artifact/core/fill_id
# 再帰の後片付け
    execute if data storage debug:catalog_container Artifact{Mode:"ArtifactAll"} store result storage debug:catalog_container Artifact.IDCounter int 1 run scoreboard players get $Counter Temporary
    scoreboard players reset $Counter Temporary

# カタログリスの場合
