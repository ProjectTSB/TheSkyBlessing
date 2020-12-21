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
    #declare score_holder $Before
    #declare score_holder $After

# UserStorage呼び出し
    function oh_its_dat:please
# データを移植
    data modify storage asset:sacred_treasure Argument.SelectedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.SelectedItem
    data modify storage asset:sacred_treasure Argument.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.Inventory
# 削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items
# AutoSlotの計算
    # mainhand
        execute store result score $Before Temporary run data get storage asset:sacred_treasure Argument.SelectedItem.Count
        execute store result score $After Temporary run data get entity @s SelectedItem.Count
        execute unless score $Before Temporary = $After Temporary run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'mainhand'
    # リセット
        scoreboard players reset $Before Temporary
        scoreboard players reset $After Temporary
    # offhand
        execute store result score $Before Temporary run data get storage asset:sacred_treasure Argument.Inventory[{Slot:-106b}].Count
        execute store result score $After Temporary run data get entity @s Inventory[{Slot:-106b}].Count
        execute unless score $Before Temporary = $After Temporary run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'offhand'
    # リセット
        scoreboard players reset $Before Temporary
        scoreboard players reset $After Temporary
# 共通処理
    function asset_manager:sacred_treasure/core/data_put/common