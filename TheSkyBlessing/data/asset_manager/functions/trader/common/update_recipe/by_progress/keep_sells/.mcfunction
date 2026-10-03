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
    #tellraw @a {"storage":"asset:trader","nbt":"Trades"}

# 必要なデータだけ移す
    # 事前初期化
        data modify storage asset:trader TempC set value []
    # 実行
        function asset_manager:trader/common/update_recipe/by_progress/keep_sells/keep

# TempCを逆にする
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:trader TempC
    function lib:array/reverse
    data modify storage asset:trader TempC set from storage lib: Array
    function lib:array/session/close

# OhMyDatに戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TraderData.Trades set from storage asset:trader TempC

# リセット
    data remove storage asset:trader TempA
    data remove storage asset:trader TempB
    data remove storage asset:trader TempC
