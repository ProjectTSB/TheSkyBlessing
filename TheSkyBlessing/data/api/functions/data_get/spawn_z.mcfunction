#> api:data_get/spawn_z
#
# 対象のSpawnZをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnZ
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SpawnZ
    data modify storage api: SpawnZ set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SpawnZ
