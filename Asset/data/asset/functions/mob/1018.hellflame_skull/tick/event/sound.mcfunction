#> asset:mob/1018.hellflame_skull/tick/event/sound
#
#
#
# @within function asset:mob/1018.hellflame_skull/tick/2.tick

#> private
# @private
    #declare score_holder $SoundInterval

# 音
    playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 1.2

# リセット
    scoreboard players reset $SoundInterval Temporary