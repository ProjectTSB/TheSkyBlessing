#> api:data_get/custom_name_visible
#
# 対象のCustomNameVisibleをstorageに軽量に取得します。
#
# @input as player
# @output storage api: CustomNameVisible
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: CustomNameVisible
    data modify storage api: CustomNameVisible set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.CustomNameVisible
