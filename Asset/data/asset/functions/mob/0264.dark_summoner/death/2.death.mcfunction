#> asset:mob/0264.dark_summoner/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0264.dark_summoner/death/1.trigger

# 音
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.7