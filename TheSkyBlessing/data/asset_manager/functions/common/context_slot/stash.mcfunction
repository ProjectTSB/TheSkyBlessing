#> asset_manager:common/context_slot/stash
#
#
#
# @within function
#   api:sacred_treasure/give/from_id

# スタックに新しい空間を追加する
    data modify storage asset:context SlotStashStack append value {}
# Slotを退避(Valueに突っ込んでいるのは、Slotのデータ型が一意に定まらず特定の型のリストとして持てないため)
    data modify storage asset:context SlotStashStack[-1].Value set from storage asset:context Slot
# Slotを掃除
    data remove storage asset:context Slot