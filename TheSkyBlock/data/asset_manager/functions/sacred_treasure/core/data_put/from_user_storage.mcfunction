#> asset_manager:sacred_treasure/core/data_put/from_user_storage
#
# 神器のIDを取得します
#
# @output storage asset:id
#   mainhand : int
#   offhand : int
#   feet : int
#   legs : int
#   chest : int
#   head : int
# @within asset_manager:sacred_treasure/triggers/use_item

# UserStorage呼び出し
    function oh_its_dat:please
# データを移植
    data modify storage asset:sacred_treasure Items.Temp.SelectedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.SelectedItem
    data modify storage asset:sacred_treasure Items.Temp.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.Inventory
# 削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items
# 共通処理
    function asset_manager:sacred_treasure/core/data_put/common