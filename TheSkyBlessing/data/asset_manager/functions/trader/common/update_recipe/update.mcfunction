#> asset_manager:trader/common/update_recipe/update
#
#
#
# @within function
#   asset_manager:trader/common/update_recipe/by_daily
#   asset_manager:trader/common/update_recipe/by_progress/

# 攻略率を取得
    function api:global_vars/game_progress
    execute store result score $Current Temporary run data get storage api: Return.Progress 100
# 取引一覧を更新
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:trader Trades
    function lib:array/reverse
    data modify storage asset:trader Trades set from storage lib: Array
    function lib:array/session/close
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/common/trades_map/
    data modify entity @s Offers.Recipes set from storage asset:trader Recipes

# リセット
    scoreboard players reset $Current Temporary
    data remove storage asset:trader Trades
    data remove storage asset:trader Recipes
