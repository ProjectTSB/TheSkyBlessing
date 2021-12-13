#> asset:mob/0105.potion_projectile/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0105.potion_projectile/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["MobInit","2X.Potion"]}
# ID (int)
    data modify storage asset:mob ID set value 105
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"マッドサイエンティスト","color":"white"}'

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon