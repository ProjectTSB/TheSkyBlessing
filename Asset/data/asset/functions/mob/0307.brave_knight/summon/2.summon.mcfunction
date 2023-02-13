#> asset:mob/0307.brave_knight/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0307.brave_knight/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Small:1b,Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 307
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Friend"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 0b
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ブレイブナイト","color":"white"}'

# 武器
    # メインハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Mainhand set value
    # オフハンド (Compound(Item)) (オプション)
        # data modify storage asset:mob Weapon.Offhand set value

# 防具
    # 頭 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Head set value
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value

# 召喚者を特

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon