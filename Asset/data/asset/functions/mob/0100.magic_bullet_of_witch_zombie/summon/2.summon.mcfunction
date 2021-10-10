#> asset:mob/0100.magic_bullet_of_witch_zombie/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0100.magic_bullet_of_witch_zombie/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 100
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false

# 向き
    execute as @e[type=marker,tag=MobInit,distance=..0.01] facing entity @a[gamemode=!spectator,distance=..30,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 属性設定 2R.Elementを持ったウィッチゾンビがいれば自身に氷の魔法になるTagを付与
    execute as @e[type=marker,tag=MobInit,distance=..0.01] positioned ~ ~-3.5 ~ if entity @e[type=zombie,tag=2R.Element,scores={MobID=99},distance=..0.05,sort=nearest,limit=1] run tag @s add 2S.Element

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon
