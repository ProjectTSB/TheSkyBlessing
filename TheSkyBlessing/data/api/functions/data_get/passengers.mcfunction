#> api:data_get/passengers
#
# 対象のPassengersをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Passengers
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Passengers
    data modify storage api: Passengers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Passengers
