#> asset:mob/0058.divide_haze/tick/divide
#
#
#
# @within function asset:mob/0058.divide_haze/tick/2.tick

# 増殖
    data modify storage api: Argument.ID set value 58
    execute positioned ~ 0 ~ run function api:mob/summon
    execute positioned ~ 0 ~ run tp @e[type=skeleton,tag=1M.DivideHaze,distance=..0.1] @s

# 仕様上同じ座標にいるとスコアが増えてしまうので多少座標ずらし
    tp @s ^ ^ ^0.3

# スコアリセット
    scoreboard players reset @s 1M.HazeCount
