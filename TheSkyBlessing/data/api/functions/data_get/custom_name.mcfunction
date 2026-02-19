#> api:data_get/custom_name
#
# 対象のCustomNameをstorageに軽量に取得します。
#
# @input as player
# @output storage api: CustomName
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: CustomName
    data modify storage api: CustomName set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.CustomName
