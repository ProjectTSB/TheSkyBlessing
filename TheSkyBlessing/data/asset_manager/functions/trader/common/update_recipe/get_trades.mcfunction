#> asset_manager:trader/common/update_recipe/get_trades
#
#
#
# @within function
#   asset_manager:trader/common/update_recipe/by_daily
#   asset_manager:trader/common/update_recipe/by_progress/check_version.m

# 取引一覧を抽出
    function oh_my_dat:please
    function asset_manager:trader/common/refresh_trades/
    data modify storage asset:trader Trades set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades
