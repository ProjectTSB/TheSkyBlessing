#> asset_manager:common/context/this/stash
#
# thisを一旦保持しておく
#
# @within function
#   api:mob/core/summon
#   api:object/core/summon

# スタックに新しい空間を追加する
    data modify storage asset:context ThisStashStack append value {}
# thisを退避(Valueに突っ込んでいるのは、idのデータ型が一意に定まらず特定の型のリストとして持てないため)
    data modify storage asset:context ThisStashStack[-1].Value set from storage asset:context this
# thisを掃除
    data remove storage asset:context this
