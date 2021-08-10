#> asset:mob/0082.amethyst_shrinker/tick/5.forward_spread
#
#
#
# @within function asset:mob/0082.amethyst_shrinker/tick/3.lazer

# 前方拡散で進む方向にばらつきを
    summon marker ~ ~ ~ {Tags:["2A.SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 5.0
    data modify storage lib: Argument.Spread set value 1.0
    execute as @e[type=marker,tag=2A.SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=2A.SpreadMarker,limit=1] feet run tp @s ~ ~ ~ ~ ~