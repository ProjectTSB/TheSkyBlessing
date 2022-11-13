#> asset:mob/0282.call_fulstuka/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0282.call_fulstuka/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Tags:["MobInit","7U.Fulstuka"],Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959}
# ID (int)
    data modify storage asset:mob ID set value 282
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Friend"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"フルストゥーカ"}'
# 武器
    # メインハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Mainhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20194}}
    # オフハンド (Compound(Item)) (オプション)
        data modify storage asset:mob Weapon.Offhand set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20196}}
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20190}}
    # 胴 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Chest set value
    # 脚 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Legs set value
    # 足 (Compound(Item)) (オプション)
        # data modify storage asset:mob Armor.Feet set value

# スコアをセットする
    scoreboard players set @e[type=armor_stand,tag=MobInit,distance=..0.01] 7U.Tick -10
# ユーザーID適応
    scoreboard players operation @e[type=armor_stand,tag=MobInit,distance=..0.01] 7U.UserID = @s UserID
# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon