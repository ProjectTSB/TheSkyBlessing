#> asset_manager:trader/resolve_sacred_treasure/
#
# インベントリに存在するすべてのTraderから購入した神器について、そのIDを取得し同IDの神器をプレイヤーに与えなおす
#
# これは、Traderから購入した時点での神器はUUIDが固定されており重複する問題を修正するために行う
#
# @within function core:tick/check_item_meta/inventory

# Traderから購入した神器のIDを取得する
    data modify storage asset:trader BoughtIDs append from storage api: Inventory[{tag:{TSB:{ItemMetaData:["SacredTreasureBoughtFromTrader"]}}}].tag.TSB.ID
# 再帰的に全部giveする
    function asset_manager:trader/resolve_sacred_treasure/give_foreach
# リセット
    data remove storage asset:trader BoughtIDs