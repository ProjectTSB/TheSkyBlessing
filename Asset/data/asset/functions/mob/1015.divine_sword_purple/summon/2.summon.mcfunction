#> asset:mob/1015.divine_sword_purple/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1015.divine_sword_purple/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["Uninterferable","MobInit"],Pose:{Head:[90f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:13594879},CustomModelData:20267}}]}
# ID (int)
    data modify storage asset:mob ID set value 1015
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ディヴァインソード","color":"#a33033","italic":false}'

# 召喚処理
    #execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/1014.deadlyshot/summon/3.init

# MobInitタグ持ちを対象にして独自Init
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/1015.divine_sword_purple/summon/3.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon