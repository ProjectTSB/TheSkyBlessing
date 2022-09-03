#> asset:mob/1014.deadlyshot/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1014.deadlyshot/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Uninterferable","MobInit"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:15016703}}}]}
# ID (int)
    data modify storage asset:mob ID set value 1014
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ルインバースト","color":"#a33033","italic":false}'

# 召喚処理
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/1014.deadlyshot/summon/3.init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon