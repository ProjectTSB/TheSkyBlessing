#> asset:mob/0188.fireball/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0188.fireball/summon/1.trigger
# @within function asset:mob/0187.flame_mage/event/shoot_magic

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["MobInit","58.Init"],}
# ID (int)
    data modify storage asset:mob ID set value 188
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value 0b
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"フレイムメイジ","color":"red"}'

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=marker,tag=MobInit,distance=..0.01] run function asset:mob/common/summon