#> asset:mob/0258.enemy_teleporter/summon/2.summon
#
# Mobの召喚時の処理
#
# @within function asset:mob/0258.enemy_teleporter/summon/1.trigger

# 元となるMobを召喚する
    summon area_effect_cloud ~ ~ ~ {Tags:["MobInit"],Particle:"block air",Duration:30}
# ID (int)
    data modify storage asset:mob ID set value 258
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"歪み","color":"dark_purple","underlined":true}'
# 体力 (double) (オプション)
    # data modify storage asset:mob Health set value

# MobInitタグ持ちを対象にして召喚関数呼び出し
    execute as @e[type=area_effect_cloud,tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# 演出
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 0