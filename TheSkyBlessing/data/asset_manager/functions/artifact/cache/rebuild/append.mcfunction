#> asset_manager:artifact/cache/rebuild/append
# @within function asset_manager:artifact/cache/rebuild/add.m

# ID の番号の ROM を呼び出す
    data modify storage api: Argument.Address set from storage asset:artifact CacheTarget.ID
    function api:rom/please
# まだ宣言が無い神器は、box に give して宣言を書き込ませる
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact run function asset_manager:artifact/cache/rebuild/fill

# 宣言の Triggers に Namespace と Field を付けて、キャッシュに足す
    data modify storage asset:artifact CacheTemp set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact.Triggers
    data modify storage asset:artifact CacheTemp[].Namespace set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact.Namespace
    data modify storage asset:artifact CacheTemp[].Field set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact.Field
    data modify storage asset:artifact Cache append from storage asset:artifact CacheTemp[]

# リセット
    data remove storage asset:artifact CacheTemp
