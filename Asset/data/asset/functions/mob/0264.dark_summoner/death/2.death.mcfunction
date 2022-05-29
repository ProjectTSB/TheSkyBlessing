#> asset:mob/0264.dark_summoner/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0264.dark_summoner/death/1.trigger

# 音
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.7

# 付近のファミリアを消す
    execute as @e[type=husk,scores={MobID=265},distance=..10,limit=6] at @s run function asset:mob/0265.dark_familiar/tick/event/suicide