#> asset:mob/0321.mini_guardian/tick/event/laser/sound
#
# レーザーサウンド
#
# @within function asset:mob/0321.mini_guardian/tick/event/laser/

#> インターバルのスコアホルダー
# @private
#declare score_holder $SoundInterval

# 実行時間を移す
    scoreboard players operation $SoundInterval Temporary = @s 8X.Tick

# 数Tickごとにサウンド
    scoreboard players operation $SoundInterval Temporary %= $15 Const
    execute if score $SoundInterval Temporary matches 0 run playsound minecraft:entity.guardian.attack hostile @a ~ ~ ~ 2 2
