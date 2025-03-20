#> asset_manager:trader/common/trades_map/
#
#
#
# @input storage asset:trader Trades
# @output storage asset:trader Recipes
# @within function
#   asset_manager:trader/common/update_recipe
#   asset_manager:trader/common/trades_map/

# 攻略進捗 (条件) をクリアしているか
    scoreboard players set $Required Temporary 0
    execute store result score $Required Temporary run data get storage asset:trader Trades[-1].RequiredProgress
    execute if score $Current Temporary >= $Required Temporary run function asset_manager:trader/common/trades_map/append

# 末尾削除
    data remove storage asset:trader Trades[-1]
# リセット
    scoreboard players reset $Required Temporary
# 要素残ってるなら再帰
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/common/trades_map/
