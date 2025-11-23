#> api:data_get/food_saturation_level
#
# 対象のfoodSaturationLevelをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodSaturationLevel
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: foodSaturationLevel
    data modify storage api: foodSaturationLevel set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.foodSaturationLevel
