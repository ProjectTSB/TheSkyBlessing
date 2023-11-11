#> asset:mob/0082.thunder_curtain/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0082.thunder_curtain/tick/1.trigger

#> Private
# @private
    #declare score_holder $Temp

# 2tickごとに雷を落とす
    scoreboard players operation $Temp Temporary = @s 2A.Tick
    scoreboard players operation $Temp Temporary %= $2 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0082.thunder_curtain/tick/3.thunder1
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s 2A.Tick 1

# 消滅
    execute if entity @s[scores={2A.Tick=120..}] run kill @s