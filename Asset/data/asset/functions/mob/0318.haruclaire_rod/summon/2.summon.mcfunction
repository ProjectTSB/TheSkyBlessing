#> asset:mob/0318.haruclaire_rod/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0318.haruclaire_rod/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~-0.9 ~ {Tags:["MobInit"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
# ID (int)
    data modify storage asset:mob ID set value 318
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    # data modify storage asset:mob Name set value 
# 防具
    # 頭 (Compound(Item)) (オプション)
        data modify storage asset:mob Armor.Head set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20331}}

# 独自init
    execute positioned ~ ~-0.9 ~ as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/0318.haruclaire_rod/summon/init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute positioned ~ ~-0.9 ~ as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon