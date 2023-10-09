#> asset:mob/0323.haruclaire_illusion/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0323.haruclaire_illusion/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 323
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 0b

# 向きを合わせる
    execute as @e[type=marker,tag=MobInit,distance=..0.01] positioned as @s run tp @s ~ ~ ~ ~ ~

# 判別用タグ付与
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run tag @s add 8Z.MarkerRoot

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon