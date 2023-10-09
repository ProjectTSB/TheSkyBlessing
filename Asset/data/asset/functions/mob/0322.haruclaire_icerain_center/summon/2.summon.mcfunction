#> asset:mob/0322.haruclaire_icerain_center/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0322.haruclaire_icerain_center/summon/1.trigger

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit"]}
# ID (int)
    data modify storage asset:mob ID set value 322
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 0b

# 独自init
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/0322.haruclaire_icerain_center/summon/init

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon