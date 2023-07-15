#> asset:mob/0319.haruclaire_ice_bullet/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/summon/1.trigger

# 元となるMobを召喚する
    summon armor_stand ~ ~-0.9 ~ {Tags:["MobInit"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
# ID (int)
    data modify storage asset:mob ID set value 319
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

# 独自init
    execute positioned ~ ~-0.9 ~ as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/0319.haruclaire_ice_bullet/summon/init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute positioned ~ ~-0.9 ~ as @e[type=armor_stand,tag=MobInit,distance=..0.01] run function asset:mob/common/summon
