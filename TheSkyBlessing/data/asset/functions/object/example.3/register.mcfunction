#> asset:object/example.3/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/65532/register

# ID65533(example.2)を継承し、ID65535(example.mixin)をMixinする
# この場合、example.3にはsummon処理がないため、example.2のsummon処理が使用される。
    data modify storage asset:object Extends append value 65533
    data modify storage asset:object Extends append value 65535
    function asset:object/extends
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value 65532
