#> asset_manager:sacred_treasure/triggers/use_item
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

#> private
# @private
    #declare score_holder $isSuccess

# AutoSlot設定
    # UserStorage呼び出し
        function oh_its_dat:please
    # mainhand?
        data modify storage asset:sacred_treasure Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.SelectedItem
        execute store success score $isSuccess Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context Items.mainhand
        execute if score $isSuccess Temporary matches 1 run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'mainhand'
    # offhand?
        data modify storage asset:sacred_treasure Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items.Inventory[{Slot:-106b}]
        execute store success score $isSuccess Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context Items.offhand
        execute if score $isSuccess Temporary matches 1 run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'offhand'
    # リセット
        scoreboard players reset $isSuccess Temporary
        data remove storage asset:sacred_treasure Temp
        data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items
    function asset_manager:sacred_treasure/core/data/auto_put
# 神器側に受け渡し
    function #asset:sacred_treasure/use_item