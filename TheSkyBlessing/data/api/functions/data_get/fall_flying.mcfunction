#> api:data_get/fall_flying
#
# 対象のFallFlyingをstorageに軽量に取得します。
#
# @input as player
# @output storage api: FallFlying
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.FallFlying.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.FallFlying.Data set from entity @s FallFlying
# outputのstorageに移す
    data modify storage api: FallFlying set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.FallFlying.Data
