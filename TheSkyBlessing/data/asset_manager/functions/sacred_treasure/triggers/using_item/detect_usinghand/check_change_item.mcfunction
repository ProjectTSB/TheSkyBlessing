#> asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/check_change_item
#
# アイテムを持ち替えた時など、左右判別をし直す必要があるかどうかをチェックします
#
# @within function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/

#>
#@private
    #declare score_holder $idNotEqualM
    #declare score_holder $idNotEqualO
    #declare score_holder $slotNotEqual

# mainhandのアイテムid比較
    data modify storage asset:sacred_treasure Temp set from storage asset:context Items.mainhand.id
    execute store success score $idNotEqualM Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context Old.Items.mainhand.id
    data modify storage asset:sacred_treasure Temp set value {}
# offhandのアイテムid比較
    data modify storage asset:sacred_treasure Temp set from storage asset:context Items.offhand.id
    execute store success score $idNotEqualO Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context Old.Items.offhand.id
    data modify storage asset:sacred_treasure Temp set value {}
# mainhandのアイテムslot比較
    data modify storage asset:sacred_treasure Temp set from storage asset:context SelectedItemSlot
    execute store success score $slotNotEqual Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context Old.SelectedItemSlot

# 比較結果から判別tag付与
    execute if score $idNotEqualM Temporary matches 1 run tag @s add UsingItem.ChangedM
    execute if score $idNotEqualO Temporary matches 1 run tag @s add UsingItem.ChangedO
    execute if score $slotNotEqual Temporary matches 1 run tag @s add UsingItem.ChangedM
# アイテムを消費してたら比較結果に関わらず判別tag付与
    tag @s[tag=TriggerFlag.UseItem] add UsingItem.ChangedM
    tag @s[tag=TriggerFlag.UseItem] add UsingItem.ChangedO

# リセット
    scoreboard players reset $idNotEqualM Temporary
    scoreboard players reset $idNotEqualO Temporary
    scoreboard players reset $slotNotEqual Temporary
    data remove storage asset:sacred_treasure Temp