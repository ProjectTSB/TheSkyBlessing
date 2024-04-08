#> api:data_get/on_ground
#
# 対象のOnGroundをstorageに軽量に取得します。
#
# @input as player
# @output storage api: OnGround
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# outputをきれいにする
    data remove storage api: OnGround
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.OnGround.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.OnGround.Data set from entity @s OnGround
# outputのstorageに移す
    data modify storage api: OnGround set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.OnGround.Data
