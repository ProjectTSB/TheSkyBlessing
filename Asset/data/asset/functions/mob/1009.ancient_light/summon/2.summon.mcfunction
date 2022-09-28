#> asset:mob/1009.ancient_light/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1009.ancient_light/summon/1.trigger

#> private
# @private
    #declare tag FacingMarker

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Uninterferable","MobInit"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20268,CustomPotionColor:10352382}}}]}
# ID (int)
    data modify storage asset:mob ID set value 1009
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"エンシェントライト","color":"aqua"}'

# マーカーのほう向かせる
    execute facing entity @e[type=marker,tag=FacingMarker,sort=nearest,limit=1] eyes run tp @e[type=armor_stand,tag=MobInit,distance=..0.01] ~ ~ ~ ~ ~

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon