#> asset_manager:trader/register/construct/trades_map/
#
#
#
# @within function
#   asset_manager:trader/register/construct/set_data
#   asset_manager:trader/register/construct/trades_map/

# ベース
    data modify storage asset:trader Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0}
# データ設定
    # buy
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].BuyA
        function asset_manager:trader/register/construct/trades_map/item_normalize/
        data modify storage asset:trader Recipes[-1].buy set from storage asset:trader Item
        data remove storage asset:trader Item
    # buyB
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].BuyB
        execute if data storage asset:trader Item run function asset_manager:trader/register/construct/trades_map/item_normalize/
        data modify storage asset:trader Recipes[-1].buyB set from storage asset:trader Item
    # sell
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].Sell
        function asset_manager:trader/register/construct/trades_map/item_normalize/
        data modify storage asset:trader Recipes[-1].sell set from storage asset:trader Item
    # maxUses
        data modify storage asset:trader Recipes[-1].maxUses set from storage asset:trader Trades[-1].MaxUses
# 末尾削除
    data remove storage asset:trader Trades[-1]
# リセット
    data remove storage asset:trader Item
# 要素残ってるなら再帰
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/register/construct/trades_map/
