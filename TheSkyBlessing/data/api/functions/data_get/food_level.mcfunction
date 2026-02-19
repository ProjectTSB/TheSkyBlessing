#> api:data_get/food_level
#
# 対象のfoodLevelをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodLevel
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: foodLevel
    data modify storage api: foodLevel set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.foodLevel
