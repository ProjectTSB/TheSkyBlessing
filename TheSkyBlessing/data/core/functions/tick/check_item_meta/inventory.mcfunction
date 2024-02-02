#> core:tick/check_item_meta/inventory
#
# インベントリ内のアイテムのItemMetaDataをチェックします
#
# @within function core:tick/player/post

#> Temp
# @private
    #declare storage core:temp

# 負荷軽減のためstorageに代入する
    function api:data_get/inventory
    data modify storage core:temp MetaData set from storage api: Inventory[].tag.TSB.ItemMetaData
# 各MetaData処理
    execute if data storage core:temp {MetaData:["BanPossession"]} run clear @a #lib:all{TSB:{ItemMetaData:["BanPossession"]}}
    execute if data storage core:temp {MetaData:["ArtifactBoughtFromTrader"]} run function asset_manager:trader/resolve_artifact/
# リセット
    data remove storage core:temp MetaData