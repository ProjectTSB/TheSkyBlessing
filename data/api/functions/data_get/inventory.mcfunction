#> api:data_get/inventory
#
# 対象のInventoryをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Inventory
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Inventory
    data modify storage api: Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Inventory
