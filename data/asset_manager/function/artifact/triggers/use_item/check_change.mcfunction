#> asset_manager:artifact/triggers/use_item/check_change
#
#
#
# @within function asset_manager:artifact/triggers/use_item/

#> private
# @private
    #declare score_holder $notEqualM
    #declare score_holder $notEqualO

# メインハンドの比較
    data modify storage asset:artifact Temp set from storage asset:context Old.Items.mainhand
    execute store success score $notEqualM Temporary run data modify storage asset:artifact Temp set from storage api: Item
# オフハンドの比較
    data modify storage asset:artifact Temp set from storage asset:context Old.Items.offhand
    execute store success score $notEqualO Temporary run data modify storage asset:artifact Temp set from storage asset:context New.Items.offhand

# 比較結果から設定
    execute if score $notEqualM Temporary matches 0 if score $notEqualO Temporary matches 0 run data modify storage asset:artifact Argument.AutoSlot set value none
    execute if score $notEqualM Temporary matches 1 if score $notEqualO Temporary matches 0 run data modify storage asset:artifact Argument.AutoSlot set value mainhand
    execute if score $notEqualM Temporary matches 0 if score $notEqualO Temporary matches 1 run data modify storage asset:artifact Argument.AutoSlot set value offhand

# リセット
    scoreboard players reset $notEqualM Temporary
    scoreboard players reset $notEqualO Temporary
    data remove storage asset:artifact Temp
