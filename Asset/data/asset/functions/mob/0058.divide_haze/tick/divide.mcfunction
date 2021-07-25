#> asset:mob/0058.divide_haze/tick/divide
#
#
#
# @within function asset:mob/0058.divide_haze/tick/2.tick

# 増殖
    data modify storage api: Argument.ID set value 58
    execute positioned ~ 0 ~ run function api:mob/summon
    execute positioned ~ 0 ~0.1 run tp @e[type=zombie,tag=1M.DivideHaze,distance=..0.1] @s
    scoreboard players reset @s 1M.HazeCount
