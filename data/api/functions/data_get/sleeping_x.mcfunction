#> api:data_get/sleeping_x
#
# 対象のSleepingXをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SleepingX
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SleepingX
    data modify storage api: SleepingX set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SleepingX
