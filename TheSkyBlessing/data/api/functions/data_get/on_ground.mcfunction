#> api:data_get/on_ground
#
# 対象のOnGroundをstorageに軽量に取得します。
#
# @input as player
# @output storage api: OnGround
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: OnGround
    data modify storage api: OnGround set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.OnGround
