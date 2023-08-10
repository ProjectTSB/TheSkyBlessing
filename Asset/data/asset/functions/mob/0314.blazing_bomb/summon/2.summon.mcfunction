#> asset:mob/0314.blazing_bomb/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0314.blazing_bomb/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["MobInit"],Passengers:[{id:"minecraft:item_display",interpolation_duration:0,item_display:"head",Tags:["Uninterferable","AutoKillWhenDieVehicle","AllowProcessingCommonTag"],brightness:{sky:15,block:15}}]}
# ID (int)
    data modify storage asset:mob ID set value 314
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

# こっちを向かせる
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] facing entity @p feet run tp @s ~ ~ ~ ~ ~-10

# 最寄りのitemdisplayのデータ弄る
    #execute as @e[type=item_display,distance=..1,sort=nearest,limit=1] run data merge entity @s {item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16737792},CustomModelData:20334}},interpolation_duration:10,transformation:{scale:[1.5f,1.5f,1.5f],right_rotation:{axis:[1.0f,0.0f,0.0f],angle:1.5705f}}}
    execute as @e[type=item_display,distance=..1,sort=nearest,limit=1] run function asset:mob/0314.blazing_bomb/summon/display_init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon