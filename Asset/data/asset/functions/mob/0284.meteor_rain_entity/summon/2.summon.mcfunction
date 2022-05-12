#> asset:mob/0284.meteor_rain_entity/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0284.meteor_rain_entity/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["MobInit","7W.Init"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:5}}}]}
# ID (int)
    data modify storage asset:mob ID set value 284
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"メテオレイン","color":"light_purple"}'

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon