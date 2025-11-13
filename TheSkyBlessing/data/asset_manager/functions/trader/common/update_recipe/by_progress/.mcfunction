#> asset_manager:trader/common/update_recipe/by_progress/
#
# 商人のレシピを更新する
#
# @within function
#   asset_manager:trader/tick/4_interval
#   asset_manager:trader/daily_update
#   asset_manager:trader/register/construct/set_data

# バージョンをチェックし、違うなら取引内容を更新する
    function oh_my_dat:please
    function asset_manager:trader/common/update_recipe/by_progress/check_version.m with storage global
    data modify storage asset:trader Trades set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades

# 取引を更新
    function asset_manager:trader/common/update_recipe/update

# バージョンを更新
    scoreboard players operation @s RecipeVersion = $TraderRecipeVersion Global
