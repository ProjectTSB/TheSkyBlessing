#> api:data_get/food_exhaustion_level
#
# 対象のfoodExhaustionLevelをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodExhaustionLevel
# @public

#>Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.foodExhaustionLevel.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.foodExhaustionLevel.Data set from entity @s foodExhaustionLevel
# outputのstorageに移す
    data modify storage api: foodExhaustionLevel set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.foodExhaustionLevel.Data