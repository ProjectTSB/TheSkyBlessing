#> api:data_get/uuid
#
# 対象のUUIDをstorageに軽量に取得します。
#
# @input as player
# @output storage api: UUID
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# キャッシュされていなければ取得
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.UUID.Data run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.UUID.Data set from entity @s UUID
# outputのstorageに移す
    data modify storage api: UUID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.UUID.Data
