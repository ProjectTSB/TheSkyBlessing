#> api:data_get/shoulder_entity_left
#
# 対象のShoulderEntityLeftをstorageに軽量に取得します。
#
# @input as player
# @output storage api: ShoulderEntityLeft
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: ShoulderEntityLeft
    data modify storage api: ShoulderEntityLeft set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.ShoulderEntityLeft
