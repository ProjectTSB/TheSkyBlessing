#> asset:object/example.2/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/65533/register

# ID65534(example.1)を継承する
# この場合、example.2にはtick処理が存在していないため、example.1のtick処理をそのまま実行する
    data modify storage asset:object Extends append value 65534
    function asset:object/extends

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value 65533
