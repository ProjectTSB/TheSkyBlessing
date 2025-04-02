#> api:data_get/dimension
#
# 対象のDimensionをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Dimension
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Dimension
    data modify storage api: Dimension set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Dimension
