#> asset:mob/0086.cross_thunder/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0086.cross_thunder/tick/1.trigger

# スコア
    scoreboard players add @s 2E.Tick 1

# 発動までvfx
    execute if entity @s[scores={2E.Tick=1..20}] run function asset:mob/0086.cross_thunder/tick/vfx

# 最初の雷
    execute if entity @s[scores={2E.Tick=21}] run function asset:mob/0086.cross_thunder/tick/3.thunder

# 次の雷
    execute if entity @s[scores={2E.Tick=23}] positioned ^ ^ ^3 run function asset:mob/0086.cross_thunder/tick/3.thunder
    execute if entity @s[scores={2E.Tick=23}] rotated ~90 ~ positioned ^ ^ ^3 run function asset:mob/0086.cross_thunder/tick/3.thunder
    execute if entity @s[scores={2E.Tick=23}] rotated ~180 ~ positioned ^ ^ ^3 run function asset:mob/0086.cross_thunder/tick/3.thunder
    execute if entity @s[scores={2E.Tick=23}] rotated ~270 ~ positioned ^ ^ ^3 run function asset:mob/0086.cross_thunder/tick/3.thunder

# その次の雷
    execute if entity @s[scores={2E.Tick=25}] positioned ^ ^ ^6 run function asset:mob/0086.cross_thunder/tick/3.thunder
    execute if entity @s[scores={2E.Tick=25}] rotated ~90 ~ positioned ^ ^ ^6 run function asset:mob/0086.cross_thunder/tick/3.thunder
    execute if entity @s[scores={2E.Tick=25}] rotated ~180 ~ positioned ^ ^ ^6 run function asset:mob/0086.cross_thunder/tick/3.thunder
    execute if entity @s[scores={2E.Tick=25}] rotated ~270 ~ positioned ^ ^ ^6 run function asset:mob/0086.cross_thunder/tick/3.thunder

# 消滅
    execute if entity @s[scores={2E.Tick=25..}] run kill @s