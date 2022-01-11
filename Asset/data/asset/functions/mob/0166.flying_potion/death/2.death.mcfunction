#> asset:mob/0166.flying_potion/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0166.flying_potion/death/1.trigger

# 演出
    particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 100
    playsound entity.splash_potion.break hostile @a ~ ~ ~ 1 1