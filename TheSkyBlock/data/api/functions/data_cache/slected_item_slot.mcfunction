#> api:data_cache/slected_item_slot
#
# 対象のSlectedItemSlotをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SlectedItemSlot
# @public

#>Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SlectedItemSlot.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SlectedItemSlot.Data set from entity @s SlectedItemSlot
# outputのstorageに移す
    data modify storage api: SlectedItemSlot set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SlectedItemSlot.Data