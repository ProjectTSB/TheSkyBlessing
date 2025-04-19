#> asset:teleporter/2147483647/register
#
#
#
# @within function asset_manager:teleporter/register/register.m

execute unless loaded 38 7 -5 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 2147483647
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [38,7,-5]
