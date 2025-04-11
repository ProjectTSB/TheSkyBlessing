#> api:data_get/spawn_y
#
# 対象のSpawnYをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnY
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SpawnY
    data modify storage api: SpawnY set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SpawnY
