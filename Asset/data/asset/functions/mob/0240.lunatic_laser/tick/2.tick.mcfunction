#> asset:mob/0240.lunatic_laser/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0240.lunatic_laser/tick/1.trigger

# スコア処理
    scoreboard players add @s 6O.Tick 1

# 最初のvfx
    execute if entity @s[scores={6O.Tick=1}] positioned ~ ~7 ~ run function asset:mob/0240.lunatic_laser/tick/vfx/first

# 発射
    execute if entity @s[scores={6O.Tick=60}] run function asset:mob/0240.lunatic_laser/tick/3.shoot

# 消滅
    execute if entity @s[scores={6O.Tick=100..}] run kill @s