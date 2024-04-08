#> api:data_get/pos
#
# 対象のPosをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Pos
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# outputをきれいにする
    data remove storage api: Pos
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 at @s as 0-0-0-0-0 run function api:data_get/pos_fetch
# outputのstorageに移す
    data modify storage api: Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Data
