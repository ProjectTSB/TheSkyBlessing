#> api:data_get/motion
#
# 対象のMotionをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Motion
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Motion
    data modify storage api: Motion set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Motion
