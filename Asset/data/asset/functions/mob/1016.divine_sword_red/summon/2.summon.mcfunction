#> asset:mob/1016.divine_sword_red/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1016.divine_sword_red/summon/1.trigger


# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["Uninterferable","MobInit"],Pose:{Head:[90f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16734296},CustomModelData:20267}}]}
# ID (int)
    data modify storage asset:mob ID set value 1016
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ディバインソード","color":"#a33033","italic":false}'

# MobInitタグ持ちを対象にして独自Init
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/1016.divine_sword_red/summon/3.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon