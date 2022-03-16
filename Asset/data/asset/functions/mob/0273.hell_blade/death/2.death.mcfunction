#> asset:mob/0273.hell_blade/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0273.hell_blade/death/1.trigger

# SFX
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    particle explosion ~ ~ ~ 0 0 0 1 2 normal @a
