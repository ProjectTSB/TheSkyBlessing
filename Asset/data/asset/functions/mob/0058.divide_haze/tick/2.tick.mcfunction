#> asset:mob/0058.divide_haze/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0058.divide_haze/tick/1.trigger

particle dust 3 2 0.01 1 ~ ~1 ~ 0.5 0.3 0.5 1 6 normal @a[distance=..12]
effect give @a[gamemode=!spectator,distance=..1.2] wither 1 2 false
execute unless entity @e[tag=1M.DivideHaze,distance=0.1..20] run scoreboard players add @s 1M.HazeCount 1
execute as @s[scores={1M.HazeCount=300..}] positioned ~ 0 ~ run function asset:mob/0058.divide_haze/summon/2.summon
execute as @s[scores={1M.HazeCount=300..}] positioned ~ 0 ~ run tp @e[tag=1M.DivideHaze,distance=..0.1] @s
execute as @s[scores={1M.HazeCount=300..}] run scoreboard players reset @s 1M.HazeCount
