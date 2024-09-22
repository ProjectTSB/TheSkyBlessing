#> asset_manager:common/custom/method/stash
#
#
#
# @within function asset:object/call.m

# スタックに新しい空間を追加する
    data modify storage asset:context MethodStashStack append value {}
# methodを退避(Valueに突っ込んでいるのは、methodが存在しない場合があるため)
    data modify storage asset:context MethodStashStack[-1].Value set from storage asset:context method
# idを掃除
    data remove storage asset:context method
