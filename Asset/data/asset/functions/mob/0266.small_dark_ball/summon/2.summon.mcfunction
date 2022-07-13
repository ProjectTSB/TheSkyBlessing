#> asset:mob/0266.small_dark_ball/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0266.small_dark_ball/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["MobInit"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20216}}}]}
# ID (int)
    data modify storage asset:mob ID set value 266
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ダークファミリア","color":"#B638FF","italic":false}'

# 召喚処理
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/0266.small_dark_ball/summon/init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon