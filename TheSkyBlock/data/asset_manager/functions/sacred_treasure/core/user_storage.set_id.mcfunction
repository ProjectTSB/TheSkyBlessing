#> asset_manager:sacred_treasure/core/user_storage.set_id
#
#
#
# @within function core:early_handler/consume_item

# UserStorage呼び出し
    function oh_its_dat:please
# データ突っ込む
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from entity @s Inventory
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SelectedItem set from entity @s SelectedItem