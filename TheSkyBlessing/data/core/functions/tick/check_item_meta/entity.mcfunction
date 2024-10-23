#> core:tick/check_item_meta/entity
#
# ItemEntityのItemMetaDataをチェックします
#
# @within function core:tick/

#> Temp
# @private
    #declare storage core:temp

# 負荷軽減のためstorageに代入する
    data modify storage core:temp MetaData set from entity @s Item.tag.TSB.ItemMetaData
# 各MetaData処理
    execute if data storage core:temp {MetaData:["BanEntityConditionItem"]} run kill @s
# 二度と処理しないように
    tag @s add ItemMetaChecked
# リセット
    data remove storage core:temp MetaData
