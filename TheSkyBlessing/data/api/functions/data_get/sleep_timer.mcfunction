#> api:data_get/sleep_timer
#
# 対象のSleepTimerをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SleepTimer
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: SleepTimer
    data modify storage api: SleepTimer set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.SleepTimer
