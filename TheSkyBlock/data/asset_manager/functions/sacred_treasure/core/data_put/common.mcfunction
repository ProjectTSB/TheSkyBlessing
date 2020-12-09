#> asset_manager:sacred_treasure/core/data_put/common
#
#
# @input storage asset:sacred_treasure
#   Items.Temp.AutoSlot
#   Items.Temp.SelectedItem
#   Items.Temp.Inventory
# @output storage
#   asset:id
#       mainhand : int
#       offhand : int
#       feet : int
#       legs : int
#       chest : int
#       head : int
#   asset:sacred_treasure
#       Items.mainhand : Item
#       Items.offhand : Item
#       Items.feet : Item
#       Items.legs : Item
#       Items.chest : Item
#       Items.head : Item
# @within function asset_manager:sacred_treasure/core/data_put/from_*

# データ移植
    data modify storage asset:sacred_treasure Items.mainhand set from storage asset:sacred_treasure Items.Temp.SelectedItem
    data modify storage asset:sacred_treasure Items.offhand set from storage asset:sacred_treasure Items.Temp.Inventory[{Slot:-106b}]
    data modify storage asset:sacred_treasure Items.feet set from storage asset:sacred_treasure Items.Temp.Inventory[{Slot:100b}]
    data modify storage asset:sacred_treasure Items.legs set from storage asset:sacred_treasure Items.Temp.Inventory[{Slot:101b}]
    data modify storage asset:sacred_treasure Items.chest set from storage asset:sacred_treasure Items.Temp.Inventory[{Slot:102b}]
    data modify storage asset:sacred_treasure Items.head set from storage asset:sacred_treasure Items.Temp.Inventory[{Slot:103b}]
# Items.autoにデータ入れる // この関数が実行される時点ではItems.autoはnullであることが保証されている
    execute if data storage asset:sacred_treasure Items.Temp{AutoSlot:"mainhand"} run data modify storage asset:sacred_treasure Items.auto set from storage asset:sacred_treasure Items.mainhand
    execute if data storage asset:sacred_treasure Items.Temp{AutoSlot:"offhand"} run data modify storage asset:sacred_treasure Items.auto set from storage asset:sacred_treasure Items.offhand
    execute if data storage asset:sacred_treasure Items.Temp{AutoSlot:"feet"} run data modify storage asset:sacred_treasure Items.auto set from storage asset:sacred_treasure Items.feet
    execute if data storage asset:sacred_treasure Items.Temp{AutoSlot:"legs"} run data modify storage asset:sacred_treasure Items.auto set from storage asset:sacred_treasure Items.legs
    execute if data storage asset:sacred_treasure Items.Temp{AutoSlot:"chest"} run data modify storage asset:sacred_treasure Items.auto set from storage asset:sacred_treasure Items.chest
    execute if data storage asset:sacred_treasure Items.Temp{AutoSlot:"head"} run data modify storage asset:sacred_treasure Items.auto set from storage asset:sacred_treasure Items.head
# IDのリセット
    data modify storage asset:id mainhand set value -1
    data modify storage asset:id offhand set value -1
    data modify storage asset:id feet set value -1
    data modify storage asset:id legs set value -1
    data modify storage asset:id chest set value -1
    data modify storage asset:id head set value -1
    data modify storage asset:id auto set value -1
# ID追加
    data modify storage asset:id mainhand set from storage asset:sacred_treasure Items.mainhand.tag.TSB.ID
    data modify storage asset:id offhand set from storage asset:sacred_treasure Items.offhand.tag.TSB.ID
    data modify storage asset:id feet set from storage asset:sacred_treasure Items.feet.tag.TSB.ID
    data modify storage asset:id legs set from storage asset:sacred_treasure Items.legs.tag.TSB.ID
    data modify storage asset:id chest set from storage asset:sacred_treasure Items.chest.tag.TSB.ID
    data modify storage asset:id head set from storage asset:sacred_treasure Items.head.tag.TSB.ID
    data modify storage asset:id auto set from storage asset:sacred_treasure Items.auto.tag.TSB.ID
# リセット
    data remove storage asset:sacred_treasure Items.Temp