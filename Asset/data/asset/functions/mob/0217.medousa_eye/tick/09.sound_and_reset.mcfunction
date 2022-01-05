#> asset:mob/0217.medousa_eye/tick/09.sound_and_reset
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

# 音
    playsound minecraft:entity.elder_guardian.death master @a[distance=..20] ~ ~ ~ 1 2 0.5

# リセット
    scoreboard players reset @s 61.Tick
    data modify entity @s NoAI set value 0b