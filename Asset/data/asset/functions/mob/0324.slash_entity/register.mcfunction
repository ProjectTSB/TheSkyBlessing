#> asset:mob/0324.slash_entity/_/register
#
#
#
# @within function asset:mob/0324.slash_entity/0.load


# ExtendsSafe (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# ID (int)
    data modify storage asset:mob ID set value 324
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"斬撃"}'
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100.0
# 武器
    # メインハンド (Compound(Item)) (オプション)
        #data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:iron_sword",Count:1b}
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
    data modify storage asset:mob Field.myValue set value "90.Value"