#> asset:mob/0086.cross_thunder/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0086.cross_thunder/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 86
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName

# 確率で斜めに
    execute if predicate lib:random_pass_per/50 as @e[type=marker,tag=MobInit,distance=..0.01] at @s run tp @s ~ ~ ~ ~45 ~

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon