#> api:data_get/shoulder_entity_right
#
# 対象のShoulderEntityRightをstorageに軽量に取得します。
#
# @input as player
# @output storage api: ShoulderEntityRight
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: ShoulderEntityRight
    data modify storage api: ShoulderEntityRight set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.ShoulderEntityRight
