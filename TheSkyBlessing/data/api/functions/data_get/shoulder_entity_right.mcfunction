#> api:data_get/shoulder_entity_right
#
# 対象のShoulderEntityRightをstorageに軽量に取得します。
#
# @input as player
# @output storage api: ShoulderEntityRight
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# outputをきれいにする
    data remove storage api: ShoulderEntityRight
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ShoulderEntityRight.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ShoulderEntityRight.Data set from entity @s ShoulderEntityRight
# outputのstorageに移す
    data modify storage api: ShoulderEntityRight set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ShoulderEntityRight.Data
