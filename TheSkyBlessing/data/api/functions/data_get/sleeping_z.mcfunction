#> api:data_get/sleeping_z
#
# 対象のSleepingZをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SleepingZ
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SleepingZ
    data modify storage api: SleepingZ set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SleepingZ
