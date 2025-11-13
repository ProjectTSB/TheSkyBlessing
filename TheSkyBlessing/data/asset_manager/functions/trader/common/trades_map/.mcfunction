#> asset_manager:trader/common/trades_map/
#
#
#
# @input storage asset:trader Trades
# @output storage asset:trader Recipes
# @within function
#   asset_manager:trader/common/update_recipe/update
#   asset_manager:trader/common/trades_map/

# 購入のための攻略進捗 (条件) のチェック用データ取得
    scoreboard players set $RequiredToBuy Temporary 0
    execute store result score $RequiredToBuy Temporary run data get storage asset:trader Trades[-1].RequiredProgress
    function asset_manager:trader/common/trades_map/create_deprecated_item.m with storage asset:trader Trades[-1]

# 売るアイテム表示のための攻略進捗 (条件) のチェック用データ取得
    scoreboard players set $RequiredToDisplay Temporary 0
    execute store result score $RequiredToDisplay Temporary run data get storage asset:trader Trades[-1].RequiredProgressToDisplay
    function asset_manager:trader/common/trades_map/create_hidden_item.m with storage asset:trader Trades[-1]

# もし、$RequiredToBuy < $RequiredToDisplayならエラーを出しておく (本来交換できないアイテムが交換できてしまうため)
    execute if score $RequiredToBuy Temporary < $RequiredToDisplay Temporary run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"$RequiredToBuyが$RequiredToDisplayより小さい値に設定されています"}]

# ベース
    data modify storage asset:trader Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0}
# データ設定
    # buy
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].BuyA
        function asset_manager:trader/common/trades_map/item_normalize/
        data remove storage asset:trader Item.tag.TSB.UUID
        data remove storage asset:trader Item.tag.TSB.ItemMetaData
        data modify storage asset:trader Recipes[-1].buy set from storage asset:trader Item
        execute unless score $Current Temporary >= $RequiredToBuy Temporary run data modify storage asset:trader Recipes[-1].buy set from storage asset:trader DeprecatedItem
    # buyB
        data remove storage asset:trader Item
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].BuyB
        execute if data storage asset:trader Item run function asset_manager:trader/common/trades_map/item_normalize/
        data remove storage asset:trader Item.tag.TSB.UUID
        data remove storage asset:trader Item.tag.TSB.ItemMetaData
        data modify storage asset:trader Recipes[-1].buyB set from storage asset:trader Item
        execute if data storage asset:trader Item unless score $Current Temporary >= $RequiredToBuy Temporary run data modify storage asset:trader Recipes[-1].buyB set from storage asset:trader DeprecatedItem
    # sell
        data modify storage asset:trader Item set from storage asset:trader Trades[-1].Sell
        function asset_manager:trader/common/trades_map/item_normalize/
        data modify storage asset:trader Recipes[-1].sell set from storage asset:trader Item
        execute unless score $Current Temporary >= $RequiredToDisplay Temporary run data modify storage asset:trader Recipes[-1].sell set from storage asset:trader HiddenItem
    # maxUses
        data modify storage asset:trader Recipes[-1].maxUses set from storage asset:trader Trades[-1].MaxUses

# 攻略進捗 (条件) をクリアしているか
    execute unless score $Current Temporary >= $RequiredToBuy Temporary run data modify storage asset:trader Recipes[-1].uses set from storage asset:trader Recipes[-1].maxUses

# 末尾削除
    data remove storage asset:trader Trades[-1]
# リセット
    scoreboard players reset $RequiredToBuy Temporary
    scoreboard players reset $RequiredToDisplay Temporary
    data remove storage asset:trader Item
    data remove storage asset:trader DeprecatedItem
    data remove storage asset:trader HiddenItem
# 要素残ってるなら再帰
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/common/trades_map/
