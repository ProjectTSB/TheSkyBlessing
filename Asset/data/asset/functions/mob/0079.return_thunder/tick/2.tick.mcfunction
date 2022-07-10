#> asset:mob/0079.return_thunder/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0079.return_thunder/tick/1.trigger

#> Private
# @private
    #declare score_holder $Temp

# 移動
    execute unless entity @s[scores={27.Tick=40..60}] run tp @s ^ ^ ^0.5

# 演出とダメージ
    scoreboard players operation $Temp Temporary = @s 27.Tick
    scoreboard players operation $Temp Temporary %= $2 Const
    execute if score $Temp Temporary matches 0 rotated ~ 0 run function asset:mob/0079.return_thunder/tick/3.thunder
    scoreboard players reset $Temp Temporary

# スコア
    scoreboard players add @s 27.Tick 1

# 途中で向きを変える
    execute if entity @s[scores={27.Tick=60}] facing entity @p[distance=..50] feet run tp @s ~ ~ ~ ~ ~

# 消滅
    execute if entity @s[scores={27.Tick=100..}] run kill @s