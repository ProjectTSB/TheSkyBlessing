#> asset:mob/ex.2/register
#
#
#
# @within function asset:mob/ex.2/_/register

# extends
    data modify storage asset:mob Extends append value 65534
    function asset:mob/extends

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# ID (int)
    data modify storage asset:mob ID set value 65533
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:golden_helmet",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:golden_chestplate",Count:1b}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:golden_leggings",Count:1b}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:golden_boots",Count:1b}
# フィールド
    data modify storage asset:mob Field.myValue set value "ex.2"