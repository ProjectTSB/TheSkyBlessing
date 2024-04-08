#> api:data_get/abilities
#
# 対象のabilitiesをstorageに軽量に取得します。
#
# @input as player
# @output storage api: abilities
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# outputをきれいにする
    data remove storage api: abilities
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.abilities.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.abilities.Data set from entity @s abilities
# outputのstorageに移す
    data modify storage api: abilities set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.abilities.Data
