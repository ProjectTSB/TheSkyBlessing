#> asset_manager:sacred_treasure/core/user_storage.get_id
#
# 神器のIDを取得します
#
# @input as player
# @output storage asset:id
#   mainhand : int
#   offhand : int
#   feet : int
#   legs : int
#   chest : int
#   head : int
# @within asset_manager:sacred_treasure/triggers/use_item

data modify storage asset:id mainhand set value -1
data modify storage asset:id offhand set value -1
data modify storage asset:id feet set value -1
data modify storage asset:id legs set value -1
data modify storage asset:id chest set value -1
data modify storage asset:id head set value -1

# UserStorage呼び出し
    function oh_its_dat:please
# データ取り出す
    data modify storage asset:id mainhand set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SelectedItem.tag.TSB.ID
    data modify storage asset:id offhand set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[{Slot:-106b}].tag.TSB.ID
    data modify storage asset:id feet set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[{Slot:100b}].tag.TSB.ID
    data modify storage asset:id legs set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[{Slot:101b}].tag.TSB.ID
    data modify storage asset:id chest set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[{Slot:102b}].tag.TSB.ID
    data modify storage asset:id head set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[{Slot:103b}].tag.TSB.ID
# 削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SelectedItem