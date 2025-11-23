#> asset_manager:common/context/this/pop
#
# 保持していたthisを戻す
#
# @within function
#   api:mob/core/summon
#   api:object/core/summon

# thisを掃除
    data remove storage asset:context this
# thisを戻す
    data modify storage asset:context this set from storage asset:context ThisStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context ThisStashStack[-1]
