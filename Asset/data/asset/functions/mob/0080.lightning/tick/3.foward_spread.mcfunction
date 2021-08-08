#> asset:mob/0080.lightning/tick/3.foward_spread
#
#
#
# @within function asset:mob/0080.lightning/tick/2.tick
#> SpreadLib
# @private
#declare tag 28.SpreadMarker

# 前方拡散で進む方向にばらつきを
    summon marker ~ ~ ~ {Tags:["28.SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 10
    data modify storage lib: Argument.Spread set value 4.5
    execute as @e[type=marker,tag=28.SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=28.SpreadMarker,limit=1] feet run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=28.SpreadMarker]
