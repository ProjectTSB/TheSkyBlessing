#> asset:object/example.mixin/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/65533/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value true
# ID (int)
    data modify storage asset:object ID set value 65535
