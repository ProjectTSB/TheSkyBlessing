#> asset:mob/1011.meteor/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1011.meteor/summon/1.trigger

# 元となるMobを召喚する
    summon area_effect_cloud ~ ~ ~ {Tags:["MobInit"],CustomNameVisible:0b,Particle:"block air",Duration:100}
# ID (int)
    data modify storage asset:mob ID set value 1011
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"メテオ","color":"white"}'
# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] run function asset:mob/common/summon