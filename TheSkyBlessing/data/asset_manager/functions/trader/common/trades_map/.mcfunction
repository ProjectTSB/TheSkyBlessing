#> asset_manager:trader/common/trades_map/
#
#
#
# @input storage asset:trader Trades
# @output storage asset:trader Recipes
# @within function
#   asset_manager:trader/common/update_recipe
#   asset_manager:trader/common/trades_map/

# ベース
    data modify storage asset:trader Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0}
# データ設定
    # buy
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].BuyA
        function asset_manager:trader/common/trades_map/item_normalize/
        data modify storage asset:trader Recipes[-1].buy set from storage asset:trader Item
        data remove storage asset:trader Item
    # buyB
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].BuyB
        execute if data storage asset:trader Item run function asset_manager:trader/common/trades_map/item_normalize/
        data modify storage asset:trader Recipes[-1].buyB set from storage asset:trader Item
    # sell
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].Sell
        function asset_manager:trader/common/trades_map/item_normalize/
        data modify storage asset:trader Recipes[-1].sell set from storage asset:trader Item
    # maxUses
        data modify storage asset:trader Recipes[-1].maxUses set from storage asset:trader Trades[-1].MaxUses

# 攻略進捗 (条件) をクリアしているか
    scoreboard players set $Required Temporary 0
    execute store result score $Required Temporary run data get storage asset:trader Trades[-1].RequiredProgress
    execute unless score $Current Temporary >= $Required Temporary run data modify storage asset:trader Recipes[-1].uses set from storage asset:trader Recipes[-1].maxUses

# 末尾削除
    data remove storage asset:trader Trades[-1]
# リセット
    scoreboard players reset $Required Temporary
    data remove storage asset:trader Item
# 要素残ってるなら再帰
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/common/trades_map/
