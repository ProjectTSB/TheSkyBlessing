#> asset_manager:trader/common/update_recipe/by_progress/
#
# 商人のレシピを更新する
#
# @within function
#   asset_manager:trader/tick/4_interval
#   asset_manager:trader/daily_update
#   asset_manager:trader/register/construct/set_data

# OhMyDat呼び出し
    function oh_my_dat:please

# 日替わり商人の場合は現在の商品は維持し、攻略度だけ反映する
    execute if entity @s[tag=Trader.DailyUpdate] run function asset_manager:trader/common/update_recipe/by_progress/keep_sells/

# バージョンをチェックし、違うなら取引内容を更新する
    function asset_manager:trader/common/update_recipe/by_progress/check_version.m with storage global

# storageに入れる
    data modify storage asset:trader Trades set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades

# 取引を更新
    function asset_manager:trader/common/update_recipe/update

# バージョンを更新
    scoreboard players operation @s RecipeVersion = $TraderRecipeVersion Global
