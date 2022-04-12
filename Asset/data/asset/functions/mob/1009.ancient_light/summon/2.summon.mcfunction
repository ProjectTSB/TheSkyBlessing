#> asset:mob/1009.ancient_light/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/1009.ancient_light/summon/1.trigger

# 元となるMobを召喚する
    summon area_effect_cloud ~ ~ ~ {Tags:["MobInit"],CustomNameVisible:0b,Particle:"block air",Duration:50}
# ID (int)
    data modify storage asset:mob ID set value 1009
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"古代の光","color":"aqua"}'

# 召喚者の反対方向を見る
    execute facing entity @s eyes run tp @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] ~ ~ ~ ~180 -10

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] run function asset:mob/common/summon