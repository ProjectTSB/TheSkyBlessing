#> asset:object/0000.sample/register
#
# オブジェクトのデータを登録
#
# @within  asset:object/alias/0/register

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# ID (int)
    data modify storage asset:object ID set value 0
# フィールド
    data modify storage asset:object Field.myValue set value "object_sample"
