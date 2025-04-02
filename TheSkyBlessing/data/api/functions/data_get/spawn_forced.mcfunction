#> api:data_get/spawn_forced
#
# 対象のSpawnForcedをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnForced
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SpawnForced
    data modify storage api: SpawnForced set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SpawnForced
