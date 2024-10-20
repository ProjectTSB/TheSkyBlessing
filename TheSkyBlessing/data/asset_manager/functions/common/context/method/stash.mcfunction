#> asset_manager:common/context/method/stash
#
#
#
# @within function
#   asset:*/call.m

# スタックに新しい空間を追加する
    data modify storage asset:context MethodStashStack append value {}
# methodを退避(Valueに突っ込んでいるのは、methodが存在しない場合があるため)
    data modify storage asset:context MethodStashStack[-1].Value set from storage asset:context method
# methodを掃除
    data remove storage asset:context method
