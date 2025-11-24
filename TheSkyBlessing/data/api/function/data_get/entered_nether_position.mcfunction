#> api:data_get/entered_nether_position
#
# 対象のenteredNetherPositionをstorageに軽量に取得します。
#
# @input as player
# @output storage api: enteredNetherPosition
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: enteredNetherPosition
    data modify storage api: enteredNetherPosition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.enteredNetherPosition
