#> asset_manager:trader/common/update_recipe/by_daily
#
#
#
# @within function asset_manager:trader/daily_update

# 取引一覧を抽出
    function asset_manager:trader/common/update_recipe/get_trades
    data modify storage asset:trader Trades set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades

# 取引を更新
    function asset_manager:trader/common/update_recipe/update
