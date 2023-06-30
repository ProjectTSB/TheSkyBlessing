#> asset:mob/0316.blazing_mine/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0316.blazing_mine/summon/1.trigger

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["MobInit"],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:0,item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1830371341,1597587671,-1944414330,67133243],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzIxZDA5MzBiZDYxZmVhNGNiOTAyN2IwMGU5NGUxM2Q2MjAyOWM1MjRlYTBiMzI2MGM3NDc0NTdiYTFiY2ZhMSJ9fX0="}]}}}}}
# ID (int)
    data modify storage asset:mob ID set value 316
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName

# 最寄りのitemdisplayのデータ弄る
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run data merge entity @s {transformation:{scale:[1f,1f,1f],translation:[0f,0.5f,0f]}}

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=item_display,tag=MobInit,distance=..0.01] run function asset:mob/common/summon