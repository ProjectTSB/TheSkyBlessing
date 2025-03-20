#> asset_manager:trader/common/update_recipe
#
# 商人のレシピを更新する
#
# @within function
#   asset_manager:trader/tick/4_interval
#   asset_manager:trader/register/construct/set_data

# 攻略率を取得
    function api:global_vars/game_progress
    execute store result score $Current Temporary run data get storage api: Return.Progress 100
# 取引一覧を抽出
    function oh_my_dat:please
    data modify storage asset:trader Trades set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades
# 取引一覧を更新
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:trader Trades
    function lib:array/reverse
    data modify storage asset:trader Trades set from storage lib: Array
    function lib:array/session/close
    execute if data storage asset:trader Trades[0] run function asset_manager:trader/common/trades_map/
    data modify entity @s Offers.Recipes set from storage asset:trader Recipes

# バージョンを更新
    scoreboard players operation @s RecipeVersion = $TraderRecipeVersion Global

# リセット
    scoreboard players reset $Current Temporary
    data remove storage asset:trader Trades
    data remove storage asset:trader Recipes
