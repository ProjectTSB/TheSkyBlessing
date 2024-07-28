#> api:data_get/hurt_time
#
# 対象のHurtTimeをstorageに軽量に取得します。
#
# @input as player
# @output storage api: HurtTime
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.HurtTime.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.HurtTime.Data set from entity @s HurtTime
# outputのstorageに移す
    data modify storage api: HurtTime set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.HurtTime.Data
