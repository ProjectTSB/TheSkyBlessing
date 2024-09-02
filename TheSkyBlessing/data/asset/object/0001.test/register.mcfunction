#> asset:object/0001.test/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value

# extends
    data modify storage asset:object Extends append value 0
    function asset:object/extends/

# ID (int)
    data modify storage asset:object ID set value 1
# フィールド
    # data modify storage asset:object Field.myValue set value
