#> asset:mob/0058.divide_haze/tick/4.divide
#
#
#
# @within function asset:mob/0058.divide_haze/tick/3.mob_count

# 増殖
    data modify storage api: Argument.ID set value 58
    execute positioned ~ 0 ~ run function api:mob/summon
    execute positioned ~ 0 ~ run tp @e[type=skeleton,scores={MobID=58},distance=..0.01] @s
