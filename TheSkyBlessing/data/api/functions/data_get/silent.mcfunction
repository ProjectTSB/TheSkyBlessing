#> api:data_get/silent
#
# 対象のSilentをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Silent
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Silent
    data modify storage api: Silent set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Silent
