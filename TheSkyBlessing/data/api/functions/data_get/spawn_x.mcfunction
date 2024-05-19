#> api:data_get/spawn_x
#
# 対象のSpawnXをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnX
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SpawnX.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run function api:data_get/spawn_x_fetch
# outputのstorageに移す
    data modify storage api: SpawnX set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SpawnX.Data
