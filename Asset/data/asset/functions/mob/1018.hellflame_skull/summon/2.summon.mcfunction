#> asset:mob/1018.hellflame_skull/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1018.hellflame_skull/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~-100 ~ {NoGravity:1b,Invisible:1b,Tags:["MobInit"],DisabledSlots:4144959}
# ID (int)
    data modify storage asset:mob ID set value 1018
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ヘルフレイムスカル","color":"red","italic":false}'
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20207}}

# 降りてくる
    execute positioned ~ ~-100 ~ as @e[type=armor_stand,tag=MobInit,distance=..0.01] run tp @s ~ ~100 ~

# MobInitタグ持ちに独自Init
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/1018.hellflame_skull/summon/3.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon