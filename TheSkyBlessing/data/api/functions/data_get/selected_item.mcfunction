#> api:data_get/selected_item
#
# 対象のSelectedItemをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SelectedItem
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run function api:data_get/selected_item_fetch
# outputのstorageに移す
    data modify storage api: SelectedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data
