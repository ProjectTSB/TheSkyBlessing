#> api:data_get/food_tick_timer
#
# 対象のfoodTickTimerをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodTickTimer
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: foodTickTimer
    data modify storage api: foodTickTimer set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.foodTickTimer
