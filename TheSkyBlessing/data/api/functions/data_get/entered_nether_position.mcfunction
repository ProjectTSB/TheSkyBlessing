#> api:data_get/entered_nether_position
#
# 対象のenteredNetherPositionをstorageに軽量に取得します。
#
# @input as player
# @output storage api: enteredNetherPosition
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# outputをきれいにする
    data remove storage api: enteredNetherPosition
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.enteredNetherPosition.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.enteredNetherPosition.Data set from entity @s enteredNetherPosition
# outputのstorageに移す
    data modify storage api: enteredNetherPosition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.enteredNetherPosition.Data
