#> asset_manager:common/custom_method/pop
#
#
#
# @within function asset:object/call.m

# methodを掃除
    data remove storage asset:context method
# methodを戻す
    data modify storage asset:context method set from storage asset:context MethodStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context MethodStashStack[-1]
