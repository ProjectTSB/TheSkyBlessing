#> api:data_get/fall_distance
#
# 対象のFallDistanceをstorageに軽量に取得します。
#
# @input as player
# @output storage api: FallDistance
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: FallDistance
    data modify storage api: FallDistance set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.FallDistance
