#> asset:effect/ex.2/register
#
#
#
# @within function asset:effect/ex.2/_/register

# 継承
    data modify storage asset:effect Extends append value 65535
    function asset:effect/extends

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:effect ExtendsSafe set value true
# ID
    data modify storage asset:effect ID set value 65534
# 名前
    data modify storage asset:effect Name set value '{"text":"再生"}'
# 説明文
    data modify storage asset:effect Description set value '{"text":"まぁまぁの再生能力"}'
# フィールド
    data modify storage asset:effect Field.HealAmount set value 2