#> asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/
#
# 左右自動判別manager
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

#>
# @within function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/*
    #declare tag UsingItem.ChangedM
    #declare tag UsingItem.ChangedO

# アイテムが変わってるか検知
    function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/check_change_item

# 判別
    execute if entity @s[scores={UsingItem=1}] run function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/check
    execute if entity @s[tag=UsingItem.ChangedM,tag=UsingItem.ChangedO] run function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/check
    execute if entity @s[tag=UsingItem.ChangedM,tag=!CheckedUsingHand] run function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/mainhand
    execute if entity @s[tag=UsingItem.ChangedO,tag=!CheckedUsingHand] run function asset_manager:sacred_treasure/triggers/using_item/detect_usinghand/offhand

# slotに適用
    execute if entity @s[tag=UsingItem.Mainhand,tag=UsingItem.Offhand] run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'none'
    execute if entity @s[tag=!UsingItem.Mainhand,tag=!UsingItem.Offhand] run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'none'
    execute if entity @s[tag=UsingItem.Mainhand,tag=!UsingItem.Offhand] run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'mainhand'
    execute if entity @s[tag=UsingItem.Offhand,tag=!UsingItem.Mainhand] run data modify storage asset:sacred_treasure Argument.AutoSlot set value 'offhand'

# リセット
    tag @s remove UsingItem.ChangedM
    tag @s remove UsingItem.ChangedO