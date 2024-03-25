#> asset_manager:artifact/triggers/dis_equip/modifier/
#
# 装備した神器のmodifierを適用する
#
# @within function
#   asset_manager:artifact/triggers/dis_equip/
#   asset_manager:artifact/triggers/dis_equip/modifier/

#> Private
# @private
    #declare score_holder $WrongSlot

# indexをとる
    scoreboard players add $SlotIndex Temporary 1
    scoreboard players operation $FixedSlotIndex Temporary = $SlotIndex Temporary
    scoreboard players operation $FixedSlotIndex Temporary < $7 Const

# 正しいスロットか確認する
    execute if score $FixedSlotIndex Temporary matches 1 run data modify storage asset:artifact TargetSlot set value "mainhand"
    execute if score $FixedSlotIndex Temporary matches 2 run data modify storage asset:artifact TargetSlot set value "offhand"
    execute if score $FixedSlotIndex Temporary matches 3 run data modify storage asset:artifact TargetSlot set value "feet"
    execute if score $FixedSlotIndex Temporary matches 4 run data modify storage asset:artifact TargetSlot set value "legs"
    execute if score $FixedSlotIndex Temporary matches 5 run data modify storage asset:artifact TargetSlot set value "chest"
    execute if score $FixedSlotIndex Temporary matches 6 run data modify storage asset:artifact TargetSlot set value "head"
    execute if score $FixedSlotIndex Temporary matches 7 run data modify storage asset:artifact TargetSlot set value "hotbar"
    execute store success score $WrongSlot Temporary run data modify storage asset:artifact TargetSlot set from storage asset:artifact NewItems[-1].tag.TSB.Slot

# 装備のModifierを取得
    execute if score $WrongSlot Temporary matches 0 if data storage asset:artifact NewItems[-1].tag.TSB.Modifiers[0] run data modify storage asset:artifact Modifiers set from storage asset:artifact NewItems[-1].tag.TSB.Modifiers
    execute if score $WrongSlot Temporary matches 0 if data storage asset:artifact NewItems[-1].tag.TSB.Modifiers[0] run function asset_manager:artifact/triggers/dis_equip/modifier/foreach

# リセット
    scoreboard players reset $FixedSlotIndex Temporary
    scoreboard players reset $WrongSlot Temporary
    data remove storage asset:artifact TargetSlot
    data remove storage asset:artifact Modifiers
    data remove storage asset:artifact NewItems[-1]

# ループ
    execute unless data storage asset:artifact NewItems[0] run scoreboard players reset $SlotIndex Temporary
    execute if data storage asset:artifact NewItems[0] run function asset_manager:artifact/triggers/dis_equip/modifier/
