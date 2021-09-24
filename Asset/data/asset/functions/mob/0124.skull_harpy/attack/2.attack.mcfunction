#> asset:mob/0124.skull_harpy/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0124.skull_harpy/attack/1.trigger

# 1tickだけ無敵にする
    execute as @p at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b}]}
# くっそ強いヴィンディケーターを召喚する。死んでもらっちゃ困るからさっき無敵にした
    execute as @p at @s run summon vindicator ~ ~ ~ {Johnny:1b,Tags:["111"],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20019,Enchantments:[{id:"minecraft:knockback",lvl:10s}]}},{}],ActiveEffects:[{Id:28b,Amplifier:0b,Duration:2147483647,ShowParticles:1b}],Attributes:[{Name:generic.attack_damage,Base:999}]}
# 1tick後死んでもらう\
    schedule function asset:mob/0124.skull_harpy/attack/2.1.vindicator_kill 1t

