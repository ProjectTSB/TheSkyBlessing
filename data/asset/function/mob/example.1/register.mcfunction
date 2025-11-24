#> asset:mob/example.1/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/65534/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 65534
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value {"text":"サンプルの敵"}
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value [{"text":"アセットモブの動作チェック用エネミー。","color":"white"},{"text":"Lore文は多くても3行くらいに収めておくべきだろう。","color":"white"},{"text":"あんまり長いとチャット表示欄からはみ出しかねないからだ。","color":"white"}]
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
    data modify storage asset:mob Field.myValue set value "example.1"
