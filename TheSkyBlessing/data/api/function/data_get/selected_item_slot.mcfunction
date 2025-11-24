#> api:data_get/selected_item_slot
#
# 対象のSelectedItemSlotをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SelectedItemSlot
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SelectedItemSlot
    data modify storage api: SelectedItemSlot set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SelectedItemSlot
