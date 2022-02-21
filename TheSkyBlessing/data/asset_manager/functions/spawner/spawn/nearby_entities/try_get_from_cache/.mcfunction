#> asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/
#
# キャッシュデータの各要素をチェックしentity数の取得を試みます。
# 値が取得できない場合-1を返します。
#
# @within function asset_manager:spawner/spawn/nearby_entities/get

# 初期化
    data modify storage asset:spawner Temp set value []
# 検索
    function asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/find
# 戻す
    function asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/restore
# リセット
    data remove storage asset:spawner Temp