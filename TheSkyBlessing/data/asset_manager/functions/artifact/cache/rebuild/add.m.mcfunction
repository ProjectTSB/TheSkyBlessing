#> asset_manager:artifact/cache/rebuild/add.m
# @input args ID : int
# @within function asset_manager:artifact/cache/rebuild/foreach

# 足し終えた ID なら何もしない
    $execute if data storage asset:artifact CachedIDs[{ID:$(ID)}] run return 0
    $data modify storage asset:artifact CachedIDs append value {ID:$(ID)}
# 宣言をキャッシュに足す
    function asset_manager:artifact/cache/rebuild/append
