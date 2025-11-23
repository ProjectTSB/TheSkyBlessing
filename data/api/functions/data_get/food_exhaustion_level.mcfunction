#> api:data_get/food_exhaustion_level
#
# 対象のfoodExhaustionLevelをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodExhaustionLevel
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: foodExhaustionLevel
    data modify storage api: foodExhaustionLevel set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.foodExhaustionLevel
