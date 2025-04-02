#> api:data_get/rotation
#
# 対象のRotationをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Rotation
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Rotation
    data modify storage api: Rotation set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Rotation
