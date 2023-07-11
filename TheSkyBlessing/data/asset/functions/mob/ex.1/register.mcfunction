#> asset:mob/ex.1/register
#
#
#
# @within function asset:mob/ex.1/_/register

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# ID (int)
    data modify storage asset:mob ID set value 65534
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"サンプルの敵"}'
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100.0
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:iron_sword",Count:1b}
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:iron_helmet",Count:1b}
    # 胴 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Chest set value {id:"minecraft:iron_chestplate",Count:1b}
    # 脚 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Legs set value {id:"minecraft:iron_leggings",Count:1b}
    # 足 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Feet set value {id:"minecraft:iron_boots",Count:1b}
# フィールド
    data modify storage asset:mob Field.myValue set value "ex.1"