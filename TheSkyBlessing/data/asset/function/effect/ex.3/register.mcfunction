#> asset:effect/ex.3/register
#
#
#
# @within function asset:effect/ex.3/_/register

# 継承
    data modify storage asset:effect Extends append value 65534
    function asset:effect/extends

# ID
    data modify storage asset:effect ID set value 65533
# 名前
    data modify storage asset:effect Name set value {"text":"超再生"}
# 説明文
    data modify storage asset:effect Description set value {"text":"ものすごく強力な再生能力"}
# フィールド
    data modify storage asset:effect Field.HealAmount set value 4
