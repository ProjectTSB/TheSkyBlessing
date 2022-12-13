#> asset:mob/0273.hell_blade/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0273.hell_blade/hurt/1.trigger

# SFX
    playsound entity.iron_golem.damage hostile @a ~ ~ ~ 1 2
    particle dust 1 0.933 0 1 ~ ~ ~ .5 .5 .5 0 10 normal @a
