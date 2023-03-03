#> asset_manager:artifact/triggers/use_item/check_hand_swap
#
#
#
# @within function asset_manager:artifact/triggers/use_item/

#> p
# @private
    #declare score_holder $notMainToOff
    #declare score_holder $notOffToMain

# メインハンド -> オフハンド
    data modify storage asset:artifact Temp set from storage asset:context New.Items.offhand
    data remove storage asset:artifact Temp.Slot
    execute store success score $notMainToOff Temporary run data modify storage asset:artifact Temp set from storage asset:context Old.Items.mainhand
# オフハンド -> メインハンド
    data modify storage asset:artifact Temp set from storage asset:context Old.Items.offhand
    data remove storage asset:artifact Temp.Slot
    execute store success score $notOffToMain Temporary run data modify storage asset:artifact Temp set from storage api: Item

# 比較結果から設定
    execute if score $notMainToOff Temporary matches 0 if score $notOffToMain Temporary matches 0 run data modify storage asset:artifact Argument.AutoSlot set value 'none'
    execute if score $notMainToOff Temporary matches 0 if score $notOffToMain Temporary matches 1 run data modify storage asset:artifact Argument.AutoSlot set value 'offhand'
    execute if score $notMainToOff Temporary matches 1 if score $notOffToMain Temporary matches 0 run data modify storage asset:artifact Argument.AutoSlot set value 'mainhand'

# リセット
    scoreboard players reset $notMainToOff Temporary
    scoreboard players reset $notOffToMain Temporary
    data remove storage asset:artifact Temp