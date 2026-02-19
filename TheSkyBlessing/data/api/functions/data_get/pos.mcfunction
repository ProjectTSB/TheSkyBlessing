#> api:data_get/pos
#
# 対象のPosをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Pos
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Pos
    data modify storage api: Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Pos
