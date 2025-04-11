#> api:data_get/data_version
#
# 対象のDataVersionをstorageに軽量に取得します。
#
# @input as player
# @output storage api: DataVersion
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: DataVersion
    data modify storage api: DataVersion set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.DataVersion
