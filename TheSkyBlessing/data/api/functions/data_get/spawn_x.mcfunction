#> api:data_get/spawn_x
#
# 対象のSpawnXをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnX
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SpawnX
    data modify storage api: SpawnX set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SpawnX
