#> asset_manager:trader/common/update_recipe/by_progress/keep_sells/
#
#
#
# @within function asset_manager:trader/common/update_recipe/by_progress/

# 取引データ取得
    function asset_manager:trader/common/update_recipe/get_trades

# 自身の取引データ取得
    data modify storage asset:trader TempA set from entity @s Offers.Recipes

# 更新後のデータを取得
    data modify storage asset:trader TempB set from storage asset:trader Trades

# 必要なデータだけ移す
    function asset_manager:trader/common/update_recipe/by_progress/keep_sells/keep

# OhMyDatに戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades set from storage asset:trader TempC

# リセット
    data remove storage asset:trader TempA
    data remove storage asset:trader TempB
    data remove storage asset:trader TempC
