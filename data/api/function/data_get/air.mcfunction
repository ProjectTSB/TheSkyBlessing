#> api:data_get/air
#
# 対象のAirをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Air
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Air
    data modify storage api: Air set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Air
