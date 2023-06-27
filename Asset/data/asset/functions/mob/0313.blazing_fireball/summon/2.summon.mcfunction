#> asset:mob/0313.blazing_fireball/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0313.blazing_fireball/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["MobInit"],Passengers:[{id:"minecraft:item_display",width:0f,height:0f,billboard:"center",Tags:["Uninterderable","AutoKillWhenDieVehicle","AllowProcessingCommonTag"],brightness:{sky:15,block:15},item:{id:"minecraft:fire_charge",Count:1b}}]}
# ID (int)
    data modify storage asset:mob ID set value 313
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName
# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon