#> api:data_get/selected_item
#
# 対象のSelectedItemをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SelectedItem
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SelectedItem
    data modify storage api: SelectedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SelectedItem
