#> debug:catalog_container/artifact/core/fill
#
# 中身を初期化し、未収蔵のカタログアイテムで埋めます
#
# @within function debug:catalog_container/artifact/fill

# アイテムが入るブロックじゃなかったらやめる
    execute unless data block ~ ~ ~ Items run return fail

# 中身削除
    data modify block ~ ~ ~ Items set value []

# 未収録アイテムが無いならやめる
    execute unless data storage debug:catalog_container Artifact.CatalogItems[0] run return fail

# 27個抽出
    function lib:array/session/open
    data modify storage lib: Array set from storage debug:catalog_container Artifact.CatalogItems
    function lib:array/packing_chest

# 中身設定
    data modify block ~ ~ ~ Items set from storage lib: Package

# カタログを抜き取った内容に更新
    data modify storage debug:catalog_container Artifact.CatalogItems set from storage lib: Array

# リセット
    function lib:array/session/close
