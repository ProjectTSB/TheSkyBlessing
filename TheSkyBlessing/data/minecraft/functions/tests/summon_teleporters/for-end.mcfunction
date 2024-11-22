#> minecraft:tests/summon_teleporters/for-end
#
#
#
# @private

#> Private
# @private
    #declare function asset:teleporter/300/register
    #declare function asset:teleporter/301/register
    #declare function asset:teleporter/302/register
    #declare function asset:teleporter/303/register

execute align xz run tp @s ~0.5 ~ ~0.5 0 0

execute at @s run tp @s ~ ~ ~ ~90 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/300/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~90 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/301/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~90 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/302/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep

execute at @s run tp @s ~ ~ ~ ~90 ~
execute at @s positioned ^ ^ ^30 align xz positioned ~0.5 ~ ~0.5 run function asset:teleporter/303/register
execute at @s positioned ^ ^ ^30 align xz run setblock ~0.5 ~-1 ~0.5 glass keep
