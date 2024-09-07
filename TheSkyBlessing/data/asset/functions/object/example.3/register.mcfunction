#> asset:object/example.3/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/example.3/register

# ID65533(example.2)を継承する
# この場合、example.3にはsummon処理がないため、example.2のsummon処理が使用される。
    data modify storage asset:object Extends append value 65533
    function asset:object/extends

# ID (int)
    data modify storage asset:object ID set value 65532
