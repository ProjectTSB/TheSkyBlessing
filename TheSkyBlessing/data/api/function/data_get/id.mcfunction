#> api:data_get/id
#
# 対象のidをstorageに軽量に取得します。
#
# @input as player
# @output storage api: id
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: id
    data modify storage api: id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.id
