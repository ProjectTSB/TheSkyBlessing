#> asset:mob/example.3/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/65532/register

# extends
    data modify storage asset:mob Extends append value 65533
    function asset:mob/extends

# ID (int)
    data modify storage asset:mob ID set value 65532
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:diamond_helmet",Count:1b}
# フィールド
    data modify storage asset:mob Field.myValue set value "ex.3"
