#> asset:mob/0055.hetukedah/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0055.hetukedah/death/1.trigger

# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.ravager.death hostile @a ~ ~ ~ 1 2