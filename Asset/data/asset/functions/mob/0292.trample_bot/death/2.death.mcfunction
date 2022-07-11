#> asset:mob/0292.trample_bot/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0292.trample_bot/death/1.trigger

    playsound entity.generic.explode hostile @a ~ ~ ~ 1 2
    particle explosion ~ ~1 ~ 0.5 0.5 0.5 1 1 normal @a