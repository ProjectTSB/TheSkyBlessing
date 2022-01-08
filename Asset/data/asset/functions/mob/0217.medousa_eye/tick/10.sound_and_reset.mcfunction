#> asset:mob/0217.medousa_eye/tick/10.sound_and_reset
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

# 音
    execute as @a[distance=..25] at @s run playsound minecraft:entity.elder_guardian.death master @s ~ ~ ~ 0.6 2

# リセット
    scoreboard players reset @s 61.Tick
    data modify entity @s NoAI set value 0b