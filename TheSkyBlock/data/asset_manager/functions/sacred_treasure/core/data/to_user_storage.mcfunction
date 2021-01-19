#> asset_manager:sacred_treasure/core/data/to_user_storage
#
# ユーザーストレージに神器データを追加する
#
# @within function core:early_handler/consume_item

# UserStorage呼び出し
    function oh_its_dat:please
# データ突っ込む
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.Inventory set from entity @s Inventory
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.SelectedItem set from entity @s SelectedItem