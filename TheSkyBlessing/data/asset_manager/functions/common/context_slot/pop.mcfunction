#> asset_manager:common/context_slot/pop
#
#
#
# @within function
#   api:sacred_treasure/give/from_id

# Slotを掃除
    data remove storage asset:context Slot
# Slotを戻す
    data modify storage asset:context Slot set from storage asset:context SlotStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context SlotStashStack[-1]