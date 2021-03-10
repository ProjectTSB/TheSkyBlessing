#> api:data_cache/rotation
#
# 対象のRotationをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Rotation
# @public

#>Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Rotation.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Rotation.Data set from entity @s Rotation
# outputのstorageに移す
    data modify storage api: Rotation set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Rotation.Data