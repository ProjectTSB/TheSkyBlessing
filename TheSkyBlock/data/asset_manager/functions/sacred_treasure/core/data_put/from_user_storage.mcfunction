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

#> private
# @private
    #declare score_holder $isSuccess

# UserStorage呼び出し
    function oh_its_dat:please
# データを移植
    data modify storage asset:sacred_treasure Argument.SelectedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.SelectedItem
    data modify storage asset:sacred_treasure Argument.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.Inventory
# 削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items
# AutoSlotの計算
    # Fallback
        data modify storage asset:sacred_treasure Temp.Base set value {}
        data modify storage asset:sacred_treasure Temp.Another set value {}
    # mainhand
        data modify storage asset:sacred_treasure Temp.Base set from storage asset:sacred_treasure Argument.SelectedItem
        data modify storage asset:sacred_treasure Temp.Another set from entity @s SelectedItem
        execute store success score $isSuccess Temporary run data modify storage asset:sacred_treasure Temp.Base set from storage asset:sacred_treasure Temp.Another
        execute if score $isSuccess Temporary matches 1 run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'mainhand'
    # リセット
        scoreboard players reset $isSuccess Temporary
        data modify storage asset:sacred_treasure Temp.Base set value {}
        data modify storage asset:sacred_treasure Temp.Another set value {}
    # offhand
        data modify storage asset:sacred_treasure Temp.Base set from storage asset:sacred_treasure Argument.Inventory[{Slot:-106b}]
        data modify storage asset:sacred_treasure Temp.Another set from entity @s Inventory[{Slot:-106b}]
        execute store success score $isSuccess Temporary run data modify storage asset:sacred_treasure Temp.Base set from storage asset:sacred_treasure Temp.Another
        execute if score $isSuccess Temporary matches 1 run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'offhand'
    # リセット
        scoreboard players reset $isSuccess Temporary
        data remove storage asset:sacred_treasure Temp
# 共通処理
    function asset_manager:sacred_treasure/core/data_put/common