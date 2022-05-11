#> asset:mob/0282.call_fulstuka/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0282.call_fulstuka/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 282
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Friendly"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"フルストゥーカ"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20145}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20143}}
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20147}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value

# スコアをセットする
    scoreboard players set @e[type=armor_stand,tag=MobInit,distance=..0.01] 7U.Tick -10

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon