#> asset:mob/0120.convict/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0120.convict/death/1.trigger

# もともといるアマスタには死んでもらう
    kill @e[type=armor_stand,tag=3C.ArmorStand]

# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    particle minecraft:block minecraft:blackstone ~ ~1.8 ~ 0.35 0.35 0.35 2 100
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 1