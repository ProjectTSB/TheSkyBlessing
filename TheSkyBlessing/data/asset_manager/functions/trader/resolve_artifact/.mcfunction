#> asset_manager:trader/resolve_artifact/
#
# インベントリに存在するすべてのTraderから購入した神器について、そのIDを取得し同IDの神器をプレイヤーに与えなおす
#
# これは、Traderから購入した時点での神器はUUIDが固定されており重複する問題を修正するために行う
#
# @within function core:tick/check_item_meta/inventory

# Traderから購入した神器のIDを取得する
    data modify storage asset:trader BoughtArtifacts append from storage api: Inventory[{tag:{TSB:{ItemMetaData:["ArtifactBoughtFromTrader"]}}}]
# 再帰的に全部giveする
    function asset_manager:trader/resolve_artifact/foreach_artifact
# リセット
    scoreboard players reset $N Temporary
    data remove storage asset:trader BoughtArtifacts