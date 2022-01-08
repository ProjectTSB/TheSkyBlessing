#> asset:mob/0217.medousa_eye/tick/10.sound_and_reset
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

# 音
    playsound minecraft:entity.elder_guardian.death hostile @a[distance=..25] ~ ~ ~ 0.6 2 0.1

# リセット
    scoreboard players reset @s 61.Tick
    data modify entity @s NoAI set value 0b