#> api:data_get/attributes
#
# 対象のAttributesをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Attributes
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Attributes
    data modify storage api: Attributes set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Attributes
