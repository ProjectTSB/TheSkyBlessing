#> core:tick/check_item_meta/inventory
#
#
#
# @within function core:tick/post-tick-proc_player

#> Temp
# @private
    #declare storage core:temp

# 負荷軽減のためstorageに代入する
    data modify storage core:temp MetaData set from entity @s Inventory[].tag.TSB.ItemMetaData
# 各MetaData処理
    execute if data storage core:temp {MetaData:["BanPossession"]} run clear @a #lib:all{TSB:{ItemMetaData:["BanPossession"]}}
# リセット
    data remove storage core:temp MetaData