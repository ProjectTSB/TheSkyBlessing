#> asset:mob/0058.divide_haze/tick/divide
#
#
#
# @within function asset:mob/0058.divide_haze/tick/2.tick

# 増殖
    execute positioned ~ 0 ~ run function asset:mob/0058.divide_haze/summon/2.summon
    execute positioned ~ 0 ~ run tp @e[type=zombie,tag=1M.DivideHaze,distance=..0.1] @s
    scoreboard players reset @s 1M.HazeCount
