#> api:data_get/uuid
#
# 対象のUUIDをstorageに軽量に取得します。
#
# @input as player
# @output storage api: UUID
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: UUID
    data modify storage api: UUID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.UUID
